// demo: set_mask_filter_send
// this demo will show you how to use mask and filter
#include <SPI.h>

#include <Wire.h>
#include "MLX90621.h"

MLX90621 tempSensor;

#include "mcp2515_can.h"
const int SPI_CS_PIN = 10;
mcp2515_can CAN(SPI_CS_PIN); // Set CS pin

void setup() {
  SERIAL_PORT_MONITOR.begin(115200);
  while (!Serial) {};

  // init can bus : baudrate = 500k
  while (CAN_OK != CAN.begin(CAN_500KBPS))
  {
    SERIAL_PORT_MONITOR.println("CAN init fail, retry...");
    delay(100);
  }
  SERIAL_PORT_MONITOR.println("CAN init ok!");

  SERIAL_PORT_MONITOR.println("\nTyre temperature sensor starting...");
  Wire.begin();// Starting I2C
  for (int i = 0; i < 4; i++)
  {
    Serial.println("Initialising temp sensor");
    tcaselect(i);
    //initialise temperature sensor with refrate=16
    tempSensor.initialise(16);
  }
  delay(100);

  tcaselect(1);


}

void tcaselect(uint8_t i) {
  if (i > 7) return;

  Wire.beginTransmission(0x70);
  Wire.write(1 << i);
  Wire.endTransmission();
}

byte stmp[2] = {0, 0};

void loop() {
  //  for (int id = 0; id < 10; id++) {
  //    memset(stmp, id, sizeof(stmp));                 // set id to send data buff
  //    CAN.sendMsgBuf(id, 0, sizeof(stmp), stmp);
  //    delay(100);
  //  }

  //Potentiometer read to LEDs################################
  //  int LEDs_L = 20 - (analogRead(A0) / 34);
  //  int LEDs_R = 20 - (analogRead(A1) / 34);
  //
  //  stmp[0] = LEDs_L;
  //  stmp[1] = LEDs_R;

  //  CAN.sendMsgBuf(0x123, 0, 2, stmp);
  //  delay(50);

  tempSensor.measure(true);
  //sensor has 4 rows of 16 data points. grab first row for now.
  int row = 0;
  //iterate over each column in the data and store into temp_pkt
  float temp_temp = tempSensor.getTemperature(1)/2;
//  SERIAL_PORT_MONITOR.println(temp_temp);
//  stmp[0] = temp_temp;
//  stmp[1] = stmp[0];
////  SERIAL_PORT_MONITOR.println(stmp[0]);
//  CAN.sendMsgBuf(0x169, 0, 2, stmp);
//  delay(5);

uint16_t tyre16 = temp_temp*100.0;
//uint16_t tyre16 = 255;
SERIAL_PORT_MONITOR.println(tyre16); 
CAN.sendMsgBuf(0x169, 0, 2, tyre16);
delay(5);


//  Serial.println(sizeof(stmp[0]));
//  //Go up and down 20 LEDs ####################################
//  for (int LEDs = 0; LEDs < 21; LEDs++) {
//    stmp[0] = LEDs;
//    stmp[1] = LEDs;
//    CAN.sendMsgBuf(0x130, 0, 2, stmp);
//    SERIAL_PORT_MONITOR.println(LEDs);
//    delay(50);
//  }
//  for (int LEDs = 20; LEDs > -1; LEDs--) {
//    stmp[0] = LEDs;
//    stmp[1] = LEDs;
//    CAN.sendMsgBuf(0x130, 0, 2, stmp);
//    SERIAL_PORT_MONITOR.println(LEDs);
//    delay(50);
//  }
}

/*********************************************************************************************************
    END FILE
*********************************************************************************************************/
