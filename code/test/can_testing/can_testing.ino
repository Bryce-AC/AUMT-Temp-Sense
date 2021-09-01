#include <SPI.h>
#include <mcp2515.h>

struct can_frame front;
struct can_frame canMsg1;
float test_float = 22.11345;
float test_float_2 = 3.1415926535;

MCP2515 mcp2515(6);

void setup() {
  mcp2515.reset();
  mcp2515.setBitrate(CAN_250KBPS, MCP_8MHZ);
  mcp2515.setNormalMode();

  Serial.begin(115200);

  canMsg1.can_id  = 0x169;
  canMsg1.can_dlc = 8;

  memcpy( &canMsg1.data[0],  &test_float, sizeof(float) );
  memcpy( &canMsg1.data[4],  &test_float_2, sizeof(float) );

  Serial.println("Setup complete!");
}

void loop() {
  mcp2515.sendMessage(&canMsg1);

//  Serial.println("Messages sent");
  Serial.print("\nfloat: ");
  Serial.print(test_float);


  delay(100);
}
