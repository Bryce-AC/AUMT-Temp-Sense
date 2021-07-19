#include <Wire.h>
#include "MLX90621.h"

MLX90621 tempSensor;

void setup() {
  Serial.begin(115200);
  Serial.println("\nTire temperature sensor starting...");
  Wire.begin();// Starting I2C
  for (int i = 0; i < 4; i++)
  {
    Serial.println("Initialising temp sensor");
    tcaselect(i);
    //initialise temperature sensor with refrate=16
    tempSensor.initialise(16);
  }
  delay(100);

}

void tcaselect(uint8_t i) {
  if (i > 7) return;

  Wire.beginTransmission(0x70);
  Wire.write(1 << i);
  Wire.endTransmission();
}

void get_temp(int port, float (& tyre_array)[16])
{
  //select mux port
  tcaselect(port);
  //get updated measurements
  tempSensor.measure(true);
  //sensor has 4 rows of 16 data points. grab first row for now.
  int row = 0;
  //iterate over each column in the data and store into temp_pkt
  for (int col = 0; col < 16; col++)
  {
    int point = row * 16 + col;
    tyre_array[col] = tempSensor.getTemperature(point);
  }
}

void print_temp(int port, float (& tyre_array)[16])
{
  Serial.print("port ");
  Serial.print(port);
  Serial.print(": ");
  for (int col = 0; col < 16; col++)
  {
    Serial.print(tyre_array[col]);
    Serial.print(" | ");
  }
  Serial.print("\n");
}

//setup arrays for each tyre
float front_l[16];
float front_r[16];
float rear_l[16];
float rear_r[16];

void loop()
{
  get_temp(0, front_l);
  get_temp(1, front_r);
  get_temp(2, rear_l);
  get_temp(3, rear_r);

  print_temp(0, front_l);
  print_temp(1, front_r);
  print_temp(2, rear_l);
  print_temp(3, rear_r);
  
  delay(1000);

}
