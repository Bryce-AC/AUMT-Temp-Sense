#include <Wire.h>
#include "MLX90621.h"

MLX90621 tempSensor;

void setup() {

  Serial.begin(115200);
  Serial.println("\nTire temperature sensor starting...");
  Wire.begin();// Starting I2C
  Serial.println("Starting temp sensor");
  //initialise temperature sensor with refrate=16
  tempSensor.initialise(16);
  delay(100);

}

void tcaselect(uint8_t i) {
  if (i > 7) return;
 
  Wire.beginTransmission(0x70);
  Wire.write(1 << i);
  Wire.endTransmission();  
}

void loop() {
  //select port zero on multiplexer
  tcaselect(0);
  //get updated measurements
  tempSensor.measure(true);

  //sensor has 4 rows of 16 data points. grab first row for now.
  int row = 0;
  float temp_pkt[16];

  //iterate over each column in the data and store into temp_pkt
  for (int col = 0; col < 16; col++){
    int point = row*16 + col;
    temp_pkt[col] = tempSensor.getTemperature(point);
    Serial.print(temp_pkt[col]);
    Serial.print(" ");
  }
  Serial.print("\n");
  
}
