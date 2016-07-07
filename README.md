# Arduino-SHT-NTC
Read-out of SHT and NTC sensors with Arduino and ROOT

## Introduction

The Arduino firmware has only been tested with Arduino Uno. In principle it's possible to adapt it for other boards.

The SHT1x library can be obtained from the [Arduino Playground - Sensirion](http://playground.arduino.cc/Code/Sensirion).

You probably don't need the shield, but it might be handy. Feel free to use the design to build your own.

The dumped data is the read-out temperature and humidity for SHTs, but the resistor values for NTCs. This way the software communicating with the Arduino can take care of converting the resistance value to temperature, depending on the NTC used.

## Commands for the read-out configuration

- "READ": tells the Arduino to send the current read-out data. Works in non free-run mode.
- "SETMODE[0|1]": mode 0 makes the Arduino wait for the READ command to send data, mode 1 sends data every wait_time milliseconds. Mode 0 is the default.
- "SETDELAYn": sets the wait_time to n seconds.
- "SETMASKssssnnnnnn": sets the read-out mask, enabling first each of the 4 SHTs (s) and then each of the 6 NTCs (n). Enable with 1, disable with 0. Default mask is 1000111111. Only the first SHT is enabled.
- "SETRn,R": sets the resistor in series with NTC n (0-5) to value R in Ohms.

## Running the ROOT software

The only requirement is to download [ROOT](http://root.cern.ch). I've been using version 5.34.

If running on Windows, you might have to adjust some things, I've only tested under Linux. The port can be specified in the function arguments:

> root -x grTHlog_threads.cpp+(port_path, logfilename)
