#include <Wire.h>
#include "MLX90621.h"

MLX90621 tempSensor;

unsigned long measurementID = 0;
String packet = "";

/*
   Data format explanations:

   {"measurementID":N, "pointID":X, "temp":t}

   pointID - point of measurement from 0-64

   Shortened:

   {"m":N, "p":X, "t":t}

   Pinout:

   Sensor:   Feather
   GND - GND
   VCC - 3.3v
   SCL - SCL
   SDA - SDA

*/

/* User config variables */

#define SerialSpeed 115200 //you can change boud rate
#define Pause 100 //pause between measurements in ms (refreshrate)

void setup() {

  Serial.begin(SerialSpeed);

  Serial.println("\nTire temperature sensor starting...");

  Wire.begin();// Starting I2C

  Serial.println("Starting temp sensor");

  tempSensor.initialise(16);

  delay(100);

}

void loop() {

  tempSensor.measure(true);

  for (int y = 0; y < 4; y++) { // go through all the rows
    for (int x = 0; x < 16; x++) { // go through all the columns
      int point = y*16 + x;
      double tempAtXY = tempSensor.getTemperature(point); // extract the temperature at position x/y

      packet = "{\"m\":" + String(measurementID) + "," + "\"p\":" + String(point) + "," + "\"t\":" + String(tempAtXY) + "}";

      Serial.println(packet);// if you dont want to handle \n character in data parser on MoTeC side change "println" to "print"
    }
  }

  delay(Pause);
  measurementID++;

}
