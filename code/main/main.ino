#include <Wire.h>
#include "MLX90621.h"

MLX90621 tempSensor;

#include <SPI.h>
#include <mcp2515.h>
MCP2515 mcp2515(6);

struct can_frame front;
struct can_frame canMsg;

void setup() {
  Serial.begin(115200);

  mcp2515.reset();
  mcp2515.setBitrate(CAN_250KBPS, MCP_8MHZ);
  mcp2515.setNormalMode();
  canMsg.can_dlc = 8;


  Serial.println("\nTyre temperature sensor starting...");
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

void tcaselect(uint8_t i)
{
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
    tyre_array[col] = 0;
    for (int row = 0; row < 4; row++)
    {
      int point = row * 16 + col;
      tyre_array[col] = tyre_array[col] + tempSensor.getTemperature(point);
      
    }
    tyre_array[col] = tyre_array[col] / 4;
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

void array_to_intx100( float(& tyre_array)[16], uint16_t(&tyre_int)[8] ){
  for(int col = 0; col < 8; col++){
    float average = tyre_array[col*2] + tyre_array[col*2 + 1] / 2.0;
    average = average * 100.0;
    tyre_int[col] = (uint16_t) average;
  }
}

//temporary tyre array
float tyre[16];
int can_id;
uint16_t tyre_int[8];

void loop()
{
  can_id = 0x169;
  for (int port = 0; port < 1; port++)
  { 
    // put temps for port x in tyre array
    get_temp(port, tyre);
    // convert to 16 bit int * 100
    array_to_intx100(tyre, tyre_int);
    
    for (int col = 0; col < 2; col++)
    {
      memcpy( &canMsg.data[0],  &tyre_int[col*4], sizeof(uint16_t) );
      memcpy( &canMsg.data[2],  &tyre_int[col*4+1], sizeof(uint16_t) );
      memcpy( &canMsg.data[4],  &tyre_int[col*4+2], sizeof(uint16_t) );
      memcpy( &canMsg.data[6],  &tyre_int[col*4+3], sizeof(uint16_t) );
      canMsg.can_id  = can_id;
      mcp2515.sendMessage(&canMsg);
      if (can_id == 0x169)
      {
        Serial.println(tyre[0]);
        Serial.println(tyre_int[col*4]);
        Serial.println(tyre_int[col*4+1]);
        Serial.println(tyre_int[col*4+2]);
        Serial.println(tyre_int[col*4+3]);        
      }

      can_id = can_id + 1;
    }
  }
  delay(100);
}
