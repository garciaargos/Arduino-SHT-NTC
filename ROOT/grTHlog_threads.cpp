/*
 * Log temperature and humidity values from Arduino serial port to a file
 * 
 * Threaded version
 * 
 * Run:
 *    root -l grTHlog_threads.cpp+
 * 
 * Blame: Carlos García Argos (carlos.garcia.argos@cern.ch)
 * 14.06.2016
 */

#include <termios.h>
#include <stdio.h>
#include <iostream>
#include <unistd.h>
#include <fcntl.h> 
#include <stdlib.h>
#include <string.h>
#include <ctime>
#include <math.h>
#include <TCanvas.h>
#include <TGraph.h>
#include <TMultiGraph.h>
#include <TAxis.h>
#include <TThread.h>
#include <TLegend.h>
#include <TGButton.h>
#include <TRootEmbeddedCanvas.h>
#include <TGButtonGroup.h>
#include <TApplication.h>

#define DEBUG false

// 1 minute seems too much or not enough?
#define WAIT_SECONDS 60
// Because the Arduino is lazy as fuck
#define WAIT_FOR_ARDUINO 10
#define DELIM ", "
#define N_NTC 6
// FIRST_NTC types: 0 = 10k, standard, 1 = 1k Kambiz's
#define FIRST_NTC 0
#define VISIBLE_POINTS 200
#define N_BUTTONS 4

TCanvas *c_TH_c;
TLegend *legend_ntc;

TMultiGraph *mgr = new TMultiGraph();
TMultiGraph *mgr_H = new TMultiGraph();
TGraph *gr[N_NTC + 3];
int points = 0;
int visible_points = VISIBLE_POINTS;
char logfilename[200];
long long int initial_time = 0;


void refreshPlots() {
    Float_t x = points; //(Float_t)gr[0]->GetXaxis()->GetXmax();
    int x_end = 0;
    int x_init = -1;
    Float_t max = -999999;
    Float_t min = 9999999;
    Float_t max_h = -999999;
    Float_t min_h = 9999999;
    
    max_h = gr[1]->GetMaximum();
    min_h = gr[1]->GetMinimum();
    
    for (int i = 0; i < N_NTC + 2; i++) {
        if (i != 1) {   // Only set the min/max values for the Temperature plots... (Will the Humidity plot update?)
            if (gr[i]->GetMaximum() > max)
                max = gr[i]->GetMaximum();
            if (gr[i]->GetMinimum() > min)
                min = gr[i]->GetMinimum();
        }
    }
    if ((visible_points > 0) && (x > visible_points)) {
        x_end = (x + 0.5)*WAIT_SECONDS;
        x_init = x_end - (visible_points + 1)*WAIT_SECONDS;
    }
    else {
        x_init = 0;
        x_end = (x + 0.5)*WAIT_SECONDS;
    }

    mgr->GetXaxis()->SetRangeUser(x_init, x_end); 
    gr[0]->GetXaxis()->SetRangeUser(x_init, x_end);
    
    mgr_H->GetXaxis()->SetRangeUser(x_init, x_end);
    gr[1]->GetXaxis()->SetRangeUser(x_init, x_end);

    mgr->GetYaxis()->SetRangeUser(min - abs(min)*0.05, max + abs(max)*0.05); 
    mgr_H->GetYaxis()->SetRangeUser(min_h, max_h);

    
    // This seems to be the right order?
    c_TH_c->cd(1)->Modified();
    c_TH_c->cd(1)->Update();
    c_TH_c->cd(2)->Modified();
    c_TH_c->cd(2)->Update();
}

////////////////////////////////////////////////////////////////////////////////
class THWindow : public TGMainFrame {

protected:
   TGTextButton *fButton;   // button being tested
   TRootEmbeddedCanvas *c_TH;
   
public:
   THWindow();
   void SetInterval(Int_t);
   void ClearPlots();
   void PrintPlotsPDF();
   void PrintPlotsPNG();
   void PrintPlots(const char *);
//    void CreatePlots(int, Float_t, Float_t*);
//    void addPoint(int, Float_t, Float_t*);
   void Quit();
   
   ClassDef(THWindow, 0)
};

THWindow *thwin;

THWindow::THWindow() : TGMainFrame(gClient->GetRoot(), 1300, 900, kHorizontalFrame) {
    // Main window
    SetCleanup(kDeepCleanup);

    // Canvas on the left
    c_TH = new TRootEmbeddedCanvas("THplot", this, 1200, 800, 1200, 800); //("Ecanvas",fMain,200,200);
    AddFrame(c_TH, new TGLayoutHints(kLHintsExpandX |
                   kLHintsExpandY, 10,00,10,1));
    
    // Controls on the right
    TGVerticalFrame *controls = new TGVerticalFrame(this);
    AddFrame(controls, new TGLayoutHints(kLHintsRight | kLHintsExpandY, 
                                        5, 5, 5, 5));

    TGButtonGroup *vertical = new TGButtonGroup(controls, "Show");
    vertical->SetTitlePos(TGGroupFrame::kCenter);
    new TGRadioButton(vertical, "Last hour", 1);
    new TGRadioButton(vertical, "Last 2 hours", 2);
    new TGRadioButton(vertical, "Last 12 hours", 12);
    new TGRadioButton(vertical, "Last 24 hours", 24);
    new TGRadioButton(vertical, "All data", 0);
    vertical->SetButton(1);
    visible_points = 1;
    
    vertical->Connect("Pressed(Int_t)", "THWindow", this, 
                        "SetInterval(Int_t)");
    controls->AddFrame(vertical, new TGLayoutHints(kLHintsExpandX));


    TGTextButton *print_png_but = new TGTextButton(controls, "Print PNG");
    controls->AddFrame(print_png_but, new TGLayoutHints(kLHintsBottom| kLHintsExpandX,
                                                0, 0, 0, 5));
    print_png_but->Connect("Pressed()", "THWindow", this, "PrintPlotsPNG()");
    controls->AddFrame(print_png_but, new TGLayoutHints(kLHintsExpandX));

    TGTextButton *print_pdf_but = new TGTextButton(controls, "Print PDF");
    controls->AddFrame(print_pdf_but, new TGLayoutHints(kLHintsBottom| kLHintsExpandX,
                                                0, 0, 0, 5));
    print_pdf_but->Connect("Pressed()", "THWindow", this, "PrintPlotsPDF()");
    controls->AddFrame(print_pdf_but, new TGLayoutHints(kLHintsExpandX));

    TGTextButton *quit = new TGTextButton(controls, "Quit");
    controls->AddFrame(quit, new TGLayoutHints(kLHintsBottom | kLHintsExpandX,
                                                0, 0, 0, 5));
    quit->Connect("Pressed()", "TApplication", gApplication, "Terminate()");

    Connect("CloseWindow()", "TApplication", gApplication, "Terminate()");
    DontCallClose();

    MapSubwindows();
    Resize();

    SetWMSizeHints(GetDefaultWidth(), GetDefaultHeight(), 1000, 1000, 0 ,0);
    SetWindowName("Temperature/Humidity Monitor");
    MapRaised();
}

void THWindow::SetInterval(Int_t interval) {
    
    if (interval == 0) {
        visible_points = -1;
    }
    else {
        visible_points = interval*(3600/WAIT_SECONDS);
    }
    if (points > 0)     // Otherwise it crashes (obviously)
        refreshPlots();
    if (DEBUG)
        std::cout << "Set interval to " << visible_points << " points" << std::endl;
}

void THWindow::ClearPlots() {
    
}

void THWindow::Quit() {
}

void THWindow::PrintPlotsPNG() {
    PrintPlots("png");
}

void THWindow::PrintPlotsPDF() {
    PrintPlots("pdf");
}

void THWindow::PrintPlots(const char *format) {
    long long int now = (long long int)std::time(0);
    char date[30], filename[200];
    time_t rawtime;
    struct tm * timeinfo;

    time (&rawtime);
    timeinfo = localtime (&rawtime);
    strftime(date, 30, "%Y%m%d%H%M%S", timeinfo);
    
    sprintf(filename, "THplot_%s.%s", date, format);
    
    if (points > 0) {
        if (DEBUG)
            std::cout << "Printing to " << filename << std::endl;
        
        c_TH_c->Print(filename);
    }
}

void createPlots(int n, Float_t x, Float_t *y) {
    initial_time = (long long int)std::time(0);
    c_TH_c  = thwin->c_TH->GetCanvas();
    c_TH_c->cd();
    c_TH_c->Divide(1, 2);
    legend_ntc = new TLegend(0.1, 0.1, 0.2, 0.25);
    int i_ntc = -1;
    for (int i = 0; i < N_NTC + 2; i++) {
        gr[i] = new TGraph(n, &x, &y[i]);
        gr[i]->SetLineColor(1 + i);
        gr[i]->SetLineWidth(2);
        gr[i]->SetMarkerColor(1 + i);
        
        
        if (i != 1) {
            mgr->Add(gr[i]);
            char legtext[200];
            if (i_ntc > -1) 
                sprintf(legtext, "NTC %d", i_ntc);
            else
                sprintf(legtext, "SHT");
            legend_ntc->AddEntry(gr[i], legtext, "LP");
            i_ntc++;
        }
    }
    gr[N_NTC + 2] = new TGraph(n, &x, &y[N_NTC + 2]);
    gr[N_NTC + 2]->SetLineColor(kRed);
    gr[N_NTC + 2]->SetLineWidth(2.3);
    legend_ntc->AddEntry(gr[N_NTC + 2], "Dew point", "LP");
    
    mgr_H->SetTitle("Humidity monitoring;Time;Humidity (%)");
    mgr_H->Add(gr[1]);
    c_TH_c->cd(1);
    mgr_H->Draw("ALP");
    c_TH_c->Update();
    
    mgr_H->GetXaxis()->SetTimeDisplay(1);
    mgr_H->GetXaxis()->SetTimeFormat("%H:%M %d/%m/%y");
    mgr_H->GetXaxis()->SetTimeOffset((Double_t)initial_time);
    c_TH_c->Update();
    
    c_TH_c->cd(2);
    mgr->SetTitle("Temperature monitoring;Time;Temperature (C)");
    mgr->Draw("ALP");
    legend_ntc->SetNColumns(2);
    legend_ntc->Draw();
    
    c_TH_c->Update();

    mgr->GetXaxis()->SetTimeDisplay(1);
    mgr->GetXaxis()->SetTimeFormat("%H:%M %d/%m/%y");
    mgr->GetXaxis()->SetTimeOffset((Double_t)initial_time);
    c_TH_c->Update();
}

void addPoint(int n, Float_t x, Float_t *y) {
    x = x*WAIT_SECONDS; // For the time to be correct...
    for (int i = 0; i < N_NTC + 2; i++) {
        gr[i]->SetPoint(n, x, y[i]);
    }
    refreshPlots();
}

Float_t calculateDewPoint(Float_t T, Float_t rh) {
    Float_t dp;
    //over water
    Float_t betaw = 17.62;
    Float_t lambdaw = 243.12;
    //over ice
    Float_t betai = 22.46;
    Float_t lambdai = 273.62;
    
    Float_t rh_i = rh*exp(betaw*T/(lambdaw + T)/(exp(betai*T/(lambdai + T))));
    if (T <= 0) {
        rh = rh_i;
        dp = lambdai * (betai*T/(lambdai + T) + log(rh/100))/(betai*lambdai/(lambdai + T) - log(rh/100));
    }
    else {
        dp = lambdaw * (betaw*T/(lambdaw + T) + log(rh/100))/(betaw*lambdaw/(lambdaw + T) - log(rh/100));
    }
 
    return dp;
}

bool calculateTemperatures(int N, char *linein, char *lineout, Float_t *values) {
    Float_t *T, *R;
    Float_t Tsht = 0.0, Hsht = 0.0;
    int count = 0;
    Float_t B = 3570;
    Float_t C[4] = {3.354e-3, 2.8645e-04, 3.2523e-06, 4.5945e-08};
    Float_t R_25 = 1e4;
    Float_t R1 = 1e4;
    Float_t T0 = 25 + 273.15;
    
    T = (Float_t*)calloc(N, sizeof(Float_t));
    R = (Float_t*)calloc(N, sizeof(Float_t));
    
    char *ptr = strtok(linein, DELIM);
    if (ptr != NULL) {
        Tsht = atof(ptr);
        ptr = strtok(NULL, DELIM);
        if (ptr != NULL) {
            Hsht = atof(ptr);
            ptr = strtok(NULL, DELIM);
        }
    }
    while ((ptr != NULL) && (count < N_NTC)) {
        R[count] = atof(ptr);
        if ((FIRST_NTC == 1) && (count == 0)) { // A0 is connected to Kambiz's 1k NTC
            T[0] = 1.0/(1.0/T0 + 1.0/3650.0*log(R[count]/1000)) - 273.15;
        }
        else {
            T[count] = 1.0/(C[0] + C[1]*log(R[count]/R_25) + C[2]*pow(log(R[count]/R_25), 2) + C[3]*pow(log(R[count]/R_25), 3)) - 273.15;
        }
        count++;
        ptr = strtok(NULL, DELIM);
    }
    values[0] = Tsht;
    values[1] = Hsht;
    for (int i = 2; i < N + 2; i++) {
        values[i] = T[i - 2];
    }
    values[N + 2] = calculateDewPoint(Tsht, Hsht);
    char temp[3000] = "";
    for (int i = 0; i < N; i++) {
        if (i < N - 1)
            sprintf(temp + strlen(temp), "%.2f, ", T[i]);
        else
            sprintf(temp + strlen(temp), "%.2f", T[i]);
    }
    
    sprintf(lineout, "%.2f, %.2f, %.2f, %s\n", Tsht, Hsht, values[N_NTC + 2], temp);
    
    free(T);
    free(R);
    
    if ((Tsht < -39.9) && (Hsht < 0.0)) {   // Maybe should think of a proper sanity check of the data
        return false;
    }
    else {
        return true;
    }
}

// Thread to handle serial port loop
void *handle_serial(void *ptr) {
    int ser = *((int*)&ptr);
    char buffer[3000];
    
    struct termios port_settings;      // structure to store the port settings in

    cfsetispeed(&port_settings, B115200);    // set baud rates
    cfsetospeed(&port_settings, B115200);

    port_settings.c_cflag &= ~PARENB;    // set no parity, stop bits, data bits
    port_settings.c_cflag &= ~CSTOPB;
    port_settings.c_cflag &= ~CSIZE;
    port_settings.c_cflag |= CS8;

    tcsetattr(ser, TCSANOW, &port_settings);
    
    std::cout << "Starting serial port thread" << std::endl;
    
    Float_t values[N_NTC + 3];
    
    char logline[3000];
    char textdate[50];
    FILE *logfile = fopen(logfilename, "a");
    if (logfile == NULL) {
        std::cout << "ERROR: could not open file " << logfilename << " for writing\n";
        return NULL;
    }
       
    
    while (true) {
        // Timestamp
        std::time_t now = std::time(0);
        sprintf(textdate, "%s", ctime(&now));
        textdate[strlen(textdate) - 1] = '\0';  // Because ctime() returns a '\n'-ended string
        
        // Request data from the Arduino...
        char command[20];
        sprintf(command, "READ\n");
        int sent = write(ser, command, strlen(command));
        
        if (DEBUG)
            std::cout << "Sent " << sent << " bytes\n";
        
        sleep(WAIT_FOR_ARDUINO);
        memset(&buffer, '\0', sizeof(buffer)/sizeof(char));
        int len = read(ser, &buffer, sizeof(buffer)/sizeof(char));
        if (len < 10) {
            std::cout << "ERROR reading buffer from serial port, trying again..." << std::endl;
            // Try again
            len = read(ser, &buffer, sizeof(buffer)/sizeof(char));
        }
        if (len > 10) {
            if (DEBUG) {
                std::cout << "Read " << len << " bytes\n";  // Debug
                if (strlen(buffer) > 1) 
                    std::cout << textdate << ", " << now << ", " << buffer << std::endl;
            }
            
            // Write to log file
            if (calculateTemperatures(N_NTC, buffer, logline, values)) {
                if (points == 0) {
                    createPlots(1, (Float_t)points, values);
                }
                else {
                    addPoint(points, (Float_t)points, values);
                }
                points++;
                
                std::cout << textdate << ", " << now << ", " << logline;
                fprintf(logfile, "%s, %Ld, %s", textdate, (long long int)now, logline);
                fflush(logfile);
            }
        }
        // Aaaand wait (zZzZzZz)
        sleep(WAIT_SECONDS - WAIT_FOR_ARDUINO);        
    }
}


int grTHlog_threads(const char *port = "/dev/ttyACM0", const char *logfilename_ = "THlog.txt") {
    TThread *serial_thread;
    long ser = open(port, O_RDWR | O_NOCTTY | O_NDELAY );   // It should be int, but then new TThread throws a warning
    if(ser == -1) {
        std::cout << "ERROR: Failed to open port" << port << std::endl;
        return -2;
    }
    
    sprintf(logfilename, "%s", logfilename_); // For the thread's benefit...
    
    serial_thread = new TThread("serial_thread", handle_serial, (void*)ser);
    
    thwin = new THWindow();
    
    serial_thread->Run();
    serial_thread->Join();
    
    close(ser);
}

