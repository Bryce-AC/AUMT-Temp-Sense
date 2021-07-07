#include <SPI.h>
#include "mcp2515_can.h"

//MAX7221
#define DIN 8 //data in
#define CLK 9 //clock
#define CS  7  //chip select
#define NUM 1  //number of driver chips

//LED Variables
#define BRIGHTNESS 8 //LED brightness (0 - 15)
#define BLINK_SPEED 30

//set up LED control object
LedControl lc = LedControl(DIN, CLK, CS, NUM);

const int SPI_CS_PIN = 6;
const int CAN_INT_PIN = 2;
mcp2515_can CAN(SPI_CS_PIN); // Set CS pin

unsigned char flagRecv = 0;
unsigned char len = 0;
unsigned char buf[8];
char str[20];


void setup() {
  //take MAX7221 out of shutdown mode
  lc.shutdown(0, false);
  //set brightness
  lc.setIntensity(0, BRIGHTNESS);
  //blank out display
  lc.clearDisplay(0);

  SERIAL_PORT_MONITOR.begin(115200);
  attachInterrupt(digitalPinToInterrupt(CAN_INT_PIN), MCP2515_ISR, FALLING); // start interrupt

  while (CAN_OK != CAN.begin(CAN_500KBPS)) {             // init can bus : baudrate = 500k
    SERIAL_PORT_MONITOR.println("CAN init fail, retry...");

    //'can' error in ASCII
    lc.setRow(0, 0, B01000011);
    lc.setRow(0, 1, B01001101);
    lc.setRow(0, 2, B00000000);
    lc.setRow(0, 3, B01001001);
    lc.setRow(0, 4, B01000110);
    lc.setRow(0, 5, B00000000);
    flashLEDs(5, false);

  }
  SERIAL_PORT_MONITOR.println("CAN init ok!");

  // there are 2 mask in mcp2515, you need to set both of them
  // register, standard/extended frame, contents of mask
  CAN.init_Mask(0, 0, 0x7ff);
  CAN.init_Mask(1, 0, 0x7ff);

  // set filters (max of 6), we can receive id from 0x04 ~ 0x09
  // register, standard/extended frame, contents of filter
  CAN.init_Filt(0, 0, 0x123);
  CAN.init_Filt(1, 0, 0x124);

  //  setLEDs(0, 20);
  //  setLEDs(1, 20);
  lc.clearDisplay(0);
}

void loop() {
  if (flagRecv) {
    // check if get data

    flagRecv = 0;                   // clear flag
    SERIAL_PORT_MONITOR.println("into loop");
    // iterate over all pending messages
    // If either the bus is saturated or the MCU is busy,
    // both RX buffers may be in use and reading a single
    // message does not clear the IRQ conditon.
    while (CAN_MSGAVAIL == CAN.checkReceive()) {
      // read data,  len: data length, buf: data buf
      SERIAL_PORT_MONITOR.println("checkReceive");
      CAN.readMsgBuf(&len, buf);

      SERIAL_PORT_MONITOR.print("left: ");
      SERIAL_PORT_MONITOR.print(buf[0], DEC);

      SERIAL_PORT_MONITOR.print(" | ");

      SERIAL_PORT_MONITOR.print("right: ");
      SERIAL_PORT_MONITOR.print(buf[1], DEC);

      SERIAL_PORT_MONITOR.println();

      int leds_left = buf[0];
      setLEDs(0,leds_left);

      int leds_right = buf[1];
      setLEDs(1,leds_right);
    }
  }
}

void MCP2515_ISR() {
  flagRecv = 1;
}

//segment: (left=0, Right=1)  leds: number of LEDs to light up
void setLEDs(int segment, int leds) {
  //if leds to set is outside of bounds, return
  if (leds < 0 || leds > 20)
  {
    return;
  }

  //local variable to pass into as row
  //left bar rows : 012
  //right bar rows: 345
  int row;
  if (segment == 0)
  {
    row = 0;
  }
  else if (segment == 1)
  {
    row = 3;
  }
  else
  {
    return;
  }

  byte LEDBit = B11111111;
  //First row (first 8 LEDs)
  if (leds <= 8)
  {
    //Shift bits to the left
    LEDBit = LEDBit << (8 - leds);
    //Set 8 LED row to the new shifted byte value
    lc.setRow(0, row + 0, LEDBit);
    //Blank out second and third rows
    lc.setRow(0, row + 1, B00000000);
    lc.setRow(0, row + 2, B00000000);
  }
  //Second row (next 8 LEDs)
  else if (leds <= 16)
  {
    LEDBit = LEDBit << (16 - leds);
    lc.setRow(0, row + 0, B11111111);
    lc.setRow(0, row + 1, LEDBit);
    lc.setRow(0, row + 2, B00000000);
  }
  //Last row (next 4 LEDs)
  else
  {
    LEDBit = LEDBit << (24 - leds);
    lc.setRow(0, row + 0, B11111111);
    lc.setRow(0, row + 1, B11111111);
    lc.setRow(0, row + 2, LEDBit);
  }
}

void flashLEDs(int flashes, bool blankBars)
{
  if (blankBars)
  {
    setLEDs(0, 20);
    setLEDs(1, 20);
  }

  for (int f = 0; f < flashes; f++)
  {
    for (int i = BRIGHTNESS; i > -1; i--)
    {
      lc.setIntensity(0, i);
      delay(BLINK_SPEED);
    }
    for (int i = 0; i < BRIGHTNESS + 1; i++)
    {
      lc.setIntensity(0, i);
      delay(BLINK_SPEED);
    }
  }
}
