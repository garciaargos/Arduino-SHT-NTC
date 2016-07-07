/*
 * NTC and SHT71 readout.
 * 
 * 6 NTCs connected to the analogue inputs.
 * 
 * 4 SHT71s connected to pins 2-3, 4-5, 6-7 and 8-9. Powered from 13-GND
 * 
 * Carlos Garcia Argos (carlos.garcia.argos@cern.ch)
 * 3/6/2016
 */

#include <SHT1x.h>
#include <string.h>

// RUNMODE 0: send data on request; 1: send data every X seconds
#define RUNMODE 0


#define DEBUG 0

#define vccPin 12
#define gndPin 10


unsigned long Tini = 0;
unsigned long Tnow = 0;
unsigned long wait_time = 5000;   // 5 seconds
double SHT_temp[4] = {0.0, 0.0, 0.0, 0.0};
double SHT_hum[4] = {0.0, 0.0, 0.0, 0.0};
double RNTC[6] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0};

int runmode = RUNMODE;
int sensors[10];
double R1[6] = {1e4, 1e4, 1e4, 1e4, 1e4, 1e4};

int clockPins[4] = {3, 5, 7, 9};
int dataPins[4] =  {2, 4, 6, 8};

SHT1x sht71[4];

void setup() {
  Serial.begin(115200);
  pinMode(gndPin, OUTPUT);
  pinMode(vccPin, OUTPUT);
  digitalWrite(vccPin, HIGH);
  digitalWrite(gndPin, LOW);

  for (int i = 0; i < 10; i++) {
    sensors[i] = 1;
    if (i < 4) {
      sht71[i] = SHT1x(dataPins[i], clockPins[i]);
    }
  }
  // Leave only one SHT enabled
  sensors[1] = 0;
  sensors[2] = 0;
  sensors[3] = 0;
  
  
}

void readOut() {
  for (int i = 0; i < 4; i++) {
    if (sensors[i] == 1) {
      SHT_temp[i] = sht71[i].readTemperatureC();
      SHT_hum[i] = sht71[i].readHumidity();
    }
  }
  
  RNTC[0] = 4.9*R1[0]/(analogRead(A0)/1023.0*4.9) - R1[0];
  RNTC[1] = 4.9*R1[1]/(analogRead(A1)/1023.0*4.9) - R1[1];
  RNTC[2] = 4.9*R1[2]/(analogRead(A2)/1023.0*4.9) - R1[2];
  RNTC[3] = 4.9*R1[3]/(analogRead(A3)/1023.0*4.9) - R1[3];
  RNTC[4] = 4.9*R1[4]/(analogRead(A4)/1023.0*4.9) - R1[4];
  RNTC[5] = 4.9*R1[5]/(analogRead(A5)/1023.0*4.9) - R1[5];
}

void loop() {
  bool send_data = false;
  Tnow = millis();
  int seconds = Tnow/1000;
    if (Serial.available() > 0) {
      String s = Serial.readString();
      //Serial.println(s);
      if (s.startsWith("READ")) {           // Read-out sensors and send data
        send_data = true;
      }
      else if (s.startsWith("SETMODE")) {   // Configure work mode
        if (s[s.length() - 2] = '0') {
          runmode = 0;
        }
        else if (s[s.length() - 2] = '1') {
          runmode = 1;
        }
        else {
          Serial.println("Unknown mode");
        }
        if (DEBUG > 0) {
          Serial.print("SETMODE: ");
          Serial.println(runmode);
        }
      }
      else if (s.startsWith("SETDELAY")) {   // Configure delay for free run mode (seconds)
        char temp[10];
        int pos = 8;
        while ((s[pos] != '\n') && (s[pos] != '\0')) {
          temp[pos - 8] = s[pos];
          pos++;
        }
        temp[pos] = '\0';
        wait_time = atoi(temp*1000);
        if (DEBUG > 0) {
          Serial.print("SETDELAY: ");
          Serial.println(wait_time);
        }
      }
      else if (s.startsWith("SETMASK")) {   // Configure sensors being read-out: bxSSSSNNNNNN
        int pos = 7;
        while ((s[pos] != '\n') && (s[pos] != '\0')) {
          if (pos < 17) {
            if (s[pos] == '0') {
              sensors[pos - 7] = 0;
            }
            else if (s[pos] == '1') {
              sensors[pos - 7] = 1;
            }
            else {  // Not recognised... what to do?
              sensors[pos - 7] = 0;
              Serial.println("Wrong mask format");
            }
          }
          else {
            Serial.println("SETMASK: mask too long");
            break;
          }
          pos++;
        }
        if (DEBUG > 0) {
          Serial.print("SETMASK: ");
          for (int i = 0; i < 10; i++) {
            Serial.print(sensors[i]);
          }
          Serial.println("");
        }
      }
      else if (s.startsWith("SETR")) {   // Configure resistors in series with the NTCs
        // Numbering of the sensors start with 0! (because I say so)
        int sensor = -1;
        if (s[4] == '0') {
          sensor = 0;
        }
        if (s[4] == '1') {
          sensor = 1;
        }
        if (s[4] == '2') {
          sensor = 2;
        }
        if (s[4] == '3') {
          sensor = 3;
        }
        if (s[4] == '4') {
          sensor = 4;
        }
        if (s[4] == '5') {
          sensor = 5;
        }
        if (sensor == -1) {
          Serial.println("Invalid sensor number");
        }
        else {
          char temp[10];
          int pos = 6;
          // R value in Ohms
          while ((s[pos] != '\n') && (s[pos] != '\0')) {
            temp[pos - 6] = s[pos];
            pos++;
          }
          temp[pos] = '\0';
          R1[sensor] = atof(temp);
          if (DEBUG > 0) {
            Serial.print("SETR, ");
            Serial.print(sensor);
            Serial.print(": ");
            Serial.println(R1[sensor]);
          }
        }
      }
      else {
        Serial.println("Unknown command");
      }
    }
 // }
  if (((runmode == 1) && (Tnow - Tini > wait_time)) || (send_data) && (runmode == 0)) {
    readOut();
    
    // Dump data for the configured SHTs
    for (int i = 0; i < 4; i++) {
      if (sensors[i] == 1) {
        Serial.print(SHT_temp[i]);
        Serial.print(", ");
        //Serial.print(", RH_SHT71: ");
        Serial.print(SHT_hum[i]);
        Serial.print(", ");
      }
    }
    
    
    // Dump data for the configured NTCs
    for (int i = 0; i < 6; i++) {
      if (sensors[i + 4] == 1) {
        if (i > 0) {
          Serial.print(", ");
        }
          Serial.print(RNTC[i]);
      
      }
    }
    Serial.println("");
    Tini = Tnow;
  }
}

