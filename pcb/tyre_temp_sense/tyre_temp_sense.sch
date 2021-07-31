EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L tyre_temp_sense-rescue:MCP2515-xST-Interface_CAN_LIN U2
U 1 1 61019D23
P 6650 2100
F 0 "U2" H 6850 3050 50  0000 C CNN
F 1 "MCP2515-I/ST" H 7050 2950 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6650 1200 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/lcsc/1809191814_Microchip-Tech-MCP2515-I-ST_C15193.pdf" H 6750 1300 50  0001 C CNN
F 4 "C15193" H 6650 2100 50  0001 C CNN "LCSC"
	1    6650 2100
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:MCP2551-I-SN-Interface_CAN_LIN U3
U 1 1 6101A557
P 9350 2000
F 0 "U3" H 8650 2600 50  0000 C CNN
F 1 "MCP2551-I-SN" H 8900 2500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9350 1500 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/lcsc/1809192221_Microchip-Tech-MCP2551T-I-SN_C49558.pdf" H 9350 2000 50  0001 C CNN
F 4 "C49558" H 9350 2000 50  0001 C CNN "LCSC"
	1    9350 2000
	1    0    0    -1  
$EndComp
Text GLabel 2900 2550 0    50   Input ~ 0
MOSI_CAN
Text GLabel 2900 2650 0    50   Input ~ 0
MISO_CAN
Text GLabel 2900 2750 0    50   Input ~ 0
CLK_CAN
$Comp
L tyre_temp_sense-rescue:+3.3V-power #PWR04
U 1 1 6101B0AB
P 3950 900
F 0 "#PWR04" H 3950 750 50  0001 C CNN
F 1 "+3.3V" H 3965 1073 50  0000 C CNN
F 2 "" H 3950 900 50  0001 C CNN
F 3 "" H 3950 900 50  0001 C CNN
	1    3950 900 
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:+5V-power #PWR05
U 1 1 6101B881
P 4150 950
F 0 "#PWR05" H 4150 800 50  0001 C CNN
F 1 "+5V" H 4165 1123 50  0000 C CNN
F 2 "" H 4150 950 50  0001 C CNN
F 3 "" H 4150 950 50  0001 C CNN
	1    4150 950 
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:GND-power #PWR03
U 1 1 6101C79D
P 3850 3150
F 0 "#PWR03" H 3850 2900 50  0001 C CNN
F 1 "GND" H 3855 2977 50  0000 C CNN
F 2 "" H 3850 3150 50  0001 C CNN
F 3 "" H 3850 3150 50  0001 C CNN
	1    3850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3050 3850 3100
Text GLabel 2950 2050 0    50   Input ~ 0
D6
Text GLabel 5900 1500 0    50   Input ~ 0
MOSI_CAN
Text GLabel 5900 1600 0    50   Input ~ 0
MISO_CAN
Text GLabel 5900 1700 0    50   Input ~ 0
D6
Text GLabel 5900 1800 0    50   Input ~ 0
CLK_CAN
$Comp
L tyre_temp_sense-rescue:+5V-power #PWR011
U 1 1 6101E600
P 6650 1000
F 0 "#PWR011" H 6650 850 50  0001 C CNN
F 1 "+5V" H 6665 1173 50  0000 C CNN
F 2 "" H 6650 1000 50  0001 C CNN
F 3 "" H 6650 1000 50  0001 C CNN
	1    6650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1000 6650 1050
$Comp
L tyre_temp_sense-rescue:GND-power #PWR010
U 1 1 6101EE04
P 6300 1100
F 0 "#PWR010" H 6300 850 50  0001 C CNN
F 1 "GND" H 6305 927 50  0000 C CNN
F 2 "" H 6300 1100 50  0001 C CNN
F 3 "" H 6300 1100 50  0001 C CNN
	1    6300 1100
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:C-Device C4
U 1 1 6101F44E
P 6450 1050
F 0 "C4" V 6198 1050 50  0000 C CNN
F 1 "1uF" V 6289 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810261812_Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 6450 1050 50  0001 C CNN
F 4 "C15849" V 6450 1050 50  0001 C CNN "LCSC"
	1    6450 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 1050 6650 1050
$Comp
L tyre_temp_sense-rescue:C-Device C1
U 1 1 6102046F
P 5050 2300
F 0 "C1" V 4798 2300 50  0000 C CNN
F 1 "30pF" V 4889 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5088 2150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809300925_Samsung-Electro-Mechanics-CL10C300JB8NNNC_C22397.pdf" H 5050 2300 50  0001 C CNN
F 4 "C22397" V 5050 2300 50  0001 C CNN "LCSC"
	1    5050 2300
	0    1    1    0   
$EndComp
$Comp
L tyre_temp_sense-rescue:Crystal-Device Y1
U 1 1 61021309
P 5450 2450
F 0 "Y1" V 5404 2581 50  0000 L CNN
F 1 "8 mhz" V 5495 2581 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 5450 2450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/2103291135_Yangxing-Tech-X50328MSB2GI_C115962.pdf" H 5450 2450 50  0001 C CNN
F 4 "C115962" V 5450 2450 50  0001 C CNN "LCSC"
	1    5450 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2300 6050 2300
Wire Wire Line
	6050 2400 5850 2400
Wire Wire Line
	5850 2400 5850 2600
Wire Wire Line
	5850 2600 5450 2600
$Comp
L tyre_temp_sense-rescue:C-Device C2
U 1 1 610207D1
P 5050 2800
F 0 "C2" V 4798 2800 50  0000 C CNN
F 1 "30pF" V 4889 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5088 2650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809300925_Samsung-Electro-Mechanics-CL10C300JB8NNNC_C22397.pdf" H 5050 2800 50  0001 C CNN
F 4 "C22397" V 5050 2800 50  0001 C CNN "LCSC"
	1    5050 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2300 5200 2300
Connection ~ 5450 2300
Wire Wire Line
	4900 2300 4900 2800
Wire Wire Line
	4900 3000 4900 2800
Connection ~ 4900 2800
Wire Wire Line
	5200 2800 5200 2600
Wire Wire Line
	5200 2600 5450 2600
Connection ~ 5450 2600
$Comp
L tyre_temp_sense-rescue:GND-power #PWR06
U 1 1 6102AF19
P 4900 3000
F 0 "#PWR06" H 4900 2750 50  0001 C CNN
F 1 "GND" H 4905 2827 50  0000 C CNN
F 2 "" H 4900 3000 50  0001 C CNN
F 3 "" H 4900 3000 50  0001 C CNN
	1    4900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1500 6050 1500
Wire Wire Line
	6050 1600 5900 1600
Wire Wire Line
	5900 1700 6050 1700
Wire Wire Line
	6050 1800 5900 1800
Text GLabel 7400 2100 2    50   Input ~ 0
D2
Wire Wire Line
	7400 2100 7250 2100
$Comp
L tyre_temp_sense-rescue:+5V-power #PWR013
U 1 1 6102C8AE
P 7750 2350
F 0 "#PWR013" H 7750 2200 50  0001 C CNN
F 1 "+5V" H 7765 2523 50  0000 C CNN
F 2 "" H 7750 2350 50  0001 C CNN
F 3 "" H 7750 2350 50  0001 C CNN
	1    7750 2350
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R12
U 1 1 6102CFB8
P 7750 2550
F 0 "R12" H 7820 2596 50  0000 L CNN
F 1 "10K" H 7820 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7680 2550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811062009_UNI-ROYAL-Uniroyal-Elec-0603WAF1002T5E_C25804.pdf" H 7750 2550 50  0001 C CNN
F 4 "C25804" H 7750 2550 50  0001 C CNN "LCSC"
	1    7750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2350 7750 2400
Wire Wire Line
	7750 2700 7250 2700
$Comp
L tyre_temp_sense-rescue:GND-power #PWR012
U 1 1 6102E560
P 6650 3100
F 0 "#PWR012" H 6650 2850 50  0001 C CNN
F 1 "GND" H 6655 2927 50  0000 C CNN
F 2 "" H 6650 3100 50  0001 C CNN
F 3 "" H 6650 3100 50  0001 C CNN
	1    6650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3100 6650 2900
$Comp
L tyre_temp_sense-rescue:GND-power #PWR021
U 1 1 6102EE1A
P 9350 2650
F 0 "#PWR021" H 9350 2400 50  0001 C CNN
F 1 "GND" H 9355 2477 50  0000 C CNN
F 2 "" H 9350 2650 50  0001 C CNN
F 3 "" H 9350 2650 50  0001 C CNN
	1    9350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2650 9350 2600
Wire Wire Line
	7250 1500 8100 1500
Wire Wire Line
	8100 1500 8100 1900
Wire Wire Line
	8100 1900 8850 1900
Wire Wire Line
	8850 1800 7250 1800
Wire Wire Line
	7250 1800 7250 1600
$Comp
L tyre_temp_sense-rescue:+5V-power #PWR020
U 1 1 6103066E
P 9350 1300
F 0 "#PWR020" H 9350 1150 50  0001 C CNN
F 1 "+5V" H 9365 1473 50  0000 C CNN
F 2 "" H 9350 1300 50  0001 C CNN
F 3 "" H 9350 1300 50  0001 C CNN
	1    9350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1300 9350 1600
$Comp
L tyre_temp_sense-rescue:R-Device R13
U 1 1 610314D5
P 8850 2450
F 0 "R13" H 8920 2496 50  0000 L CNN
F 1 "10K" H 8920 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 2450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811062009_UNI-ROYAL-Uniroyal-Elec-0603WAF1002T5E_C25804.pdf" H 8850 2450 50  0001 C CNN
F 4 "C25804" H 8850 2450 50  0001 C CNN "LCSC"
	1    8850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2200 8850 2300
Wire Wire Line
	8850 2600 9350 2600
Connection ~ 9350 2600
Wire Wire Line
	9350 2600 9350 2400
Wire Wire Line
	3950 1050 3950 900 
Wire Wire Line
	4050 1050 4150 1050
Wire Wire Line
	4150 1050 4150 950 
$Comp
L tyre_temp_sense-rescue:Conn_01x04-Connector_Generic J1
U 1 1 61036118
P 1000 1400
F 0 "J1" H 1350 1000 50  0000 C CNN
F 1 "POWER & CAN" H 1150 1100 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 1000 1400 50  0001 C CNN
F 3 "~" H 1000 1400 50  0001 C CNN
	1    1000 1400
	-1   0    0    1   
$EndComp
$Comp
L tyre_temp_sense-rescue:GND-power #PWR01
U 1 1 61039435
P 1200 1600
F 0 "#PWR01" H 1200 1350 50  0001 C CNN
F 1 "GND" H 1205 1427 50  0000 C CNN
F 2 "" H 1200 1600 50  0001 C CNN
F 3 "" H 1200 1600 50  0001 C CNN
	1    1200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1600 1200 1550
$Comp
L tyre_temp_sense-rescue:+5V-power #PWR02
U 1 1 6103A3DF
P 1850 1250
F 0 "#PWR02" H 1850 1100 50  0001 C CNN
F 1 "+5V" H 1865 1423 50  0000 C CNN
F 2 "" H 1850 1250 50  0001 C CNN
F 3 "" H 1850 1250 50  0001 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1250 1850 1300
Text GLabel 1450 1300 2    50   Input ~ 0
CAN+
Text GLabel 1450 1200 2    50   Input ~ 0
CAN-
Text GLabel 9950 1900 2    50   Input ~ 0
CAN+
Text GLabel 9950 2100 2    50   Input ~ 0
CAN-
Wire Wire Line
	9950 2100 9900 2100
Wire Wire Line
	9850 1900 9900 1900
$Comp
L tyre_temp_sense-rescue:Conn_01x02-Connector_Generic J6
U 1 1 6103FEB4
P 10050 1400
F 0 "J6" V 10014 1212 50  0000 R CNN
F 1 "Conn_01x02" V 9923 1212 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10050 1400 50  0001 C CNN
F 3 "~" H 10050 1400 50  0001 C CNN
	1    10050 1400
	0    -1   -1   0   
$EndComp
Connection ~ 9900 1900
Wire Wire Line
	9900 1900 9950 1900
Wire Wire Line
	9900 1600 10050 1600
Wire Wire Line
	10150 1600 10300 1600
Wire Wire Line
	10300 1600 10300 2200
Wire Wire Line
	10300 2200 9900 2200
Wire Wire Line
	9900 2200 9900 2100
Connection ~ 9900 2100
Wire Wire Line
	9900 2100 9850 2100
$Comp
L tyre_temp_sense-rescue:GND-power #PWR08
U 1 1 6104F4E7
P 5100 6550
F 0 "#PWR08" H 5100 6300 50  0001 C CNN
F 1 "GND" H 5105 6377 50  0000 C CNN
F 2 "" H 5100 6550 50  0001 C CNN
F 3 "" H 5100 6550 50  0001 C CNN
	1    5100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6450 5100 6500
Text GLabel 4200 4750 0    50   Input ~ 0
SCL
Text GLabel 4500 4850 0    50   Input ~ 0
SDA
Text GLabel 4450 2450 2    50   Input ~ 0
SDA
Text GLabel 4450 2550 2    50   Input ~ 0
SCL
Wire Wire Line
	4450 2450 4350 2450
Wire Wire Line
	4350 2550 4450 2550
$Comp
L tyre_temp_sense-rescue:C-Device C3
U 1 1 6105AA8F
P 5250 4200
F 0 "C3" H 5135 4154 50  0000 R CNN
F 1 "10uF" H 5135 4245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5288 4050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810191219_Samsung-Electro-Mechanics-CL10A106KP8NNNC_C19702.pdf" H 5250 4200 50  0001 C CNN
F 4 "C19702" H 5250 4200 50  0001 C CNN "LCSC"
	1    5250 4200
	-1   0    0    1   
$EndComp
Connection ~ 5100 4050
$Comp
L tyre_temp_sense-rescue:GND-power #PWR09
U 1 1 6105F144
P 5250 4350
F 0 "#PWR09" H 5250 4100 50  0001 C CNN
F 1 "GND" H 5255 4177 50  0000 C CNN
F 2 "" H 5250 4350 50  0001 C CNN
F 3 "" H 5250 4350 50  0001 C CNN
	1    5250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4050 5100 4550
$Comp
L tyre_temp_sense-rescue:R-Device R1
U 1 1 61063596
P 4000 5100
F 0 "R1" H 4070 5146 50  0000 L CNN
F 1 "10K" H 4070 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3930 5100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811062009_UNI-ROYAL-Uniroyal-Elec-0603WAF1002T5E_C25804.pdf" H 4000 5100 50  0001 C CNN
F 4 "C25804" H 4000 5100 50  0001 C CNN "LCSC"
	1    4000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6500 5100 6500
Connection ~ 5100 6500
Wire Wire Line
	5100 6500 5100 6550
$Comp
L tyre_temp_sense-rescue:Conn_01x04-Connector_Generic J3
U 1 1 6107D7A2
P 8750 4550
F 0 "J3" V 8950 4700 50  0000 R CNN
F 1 "MUX Port 1" V 8850 4700 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 8750 4550 50  0001 C CNN
F 3 "~" H 8750 4550 50  0001 C CNN
	1    8750 4550
	0    -1   -1   0   
$EndComp
$Comp
L tyre_temp_sense-rescue:Conn_01x04-Connector_Generic J4
U 1 1 6107FA67
P 9350 4750
F 0 "J4" V 9550 4900 50  0000 R CNN
F 1 "MUX Port 2" V 9450 4900 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 9350 4750 50  0001 C CNN
F 3 "~" H 9350 4750 50  0001 C CNN
	1    9350 4750
	0    -1   -1   0   
$EndComp
$Comp
L tyre_temp_sense-rescue:Conn_01x04-Connector_Generic J2
U 1 1 61047D04
P 8150 4350
F 0 "J2" V 8350 4500 50  0000 R CNN
F 1 "MUX Port 0" V 8250 4500 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 8150 4350 50  0001 C CNN
F 3 "~" H 8150 4350 50  0001 C CNN
	1    8150 4350
	0    -1   -1   0   
$EndComp
$Comp
L tyre_temp_sense-rescue:Conn_01x04-Connector_Generic J5
U 1 1 6109581C
P 10000 4950
F 0 "J5" V 10200 5100 50  0000 R CNN
F 1 "MUX Port 3" V 10100 5100 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 10000 4950 50  0001 C CNN
F 3 "~" H 10000 4950 50  0001 C CNN
	1    10000 4950
	0    -1   -1   0   
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R4
U 1 1 610DEB4F
P 6050 4550
F 0 "R4" H 6000 4900 50  0000 L CNN
F 1 "4.7K" H 6000 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 6050 4550 50  0001 C CNN
F 4 "C23162" H 6050 4550 50  0001 C CNN "LCSC"
	1    6050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5250 4700 5250
Wire Wire Line
	4000 4950 4000 4050
Wire Wire Line
	4000 4050 4250 4050
Wire Wire Line
	4500 4850 4550 4850
$Comp
L tyre_temp_sense-rescue:R-Device R2
U 1 1 61171CA6
P 4250 4450
F 0 "R2" H 4320 4496 50  0000 L CNN
F 1 "4.7K" H 4320 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4180 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 4250 4450 50  0001 C CNN
F 4 "C23162" H 4250 4450 50  0001 C CNN "LCSC"
	1    4250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4750 4250 4750
Connection ~ 4250 4750
Wire Wire Line
	4250 4750 4700 4750
$Comp
L tyre_temp_sense-rescue:R-Device R3
U 1 1 61186F84
P 4550 4450
F 0 "R3" H 4620 4496 50  0000 L CNN
F 1 "4.7K" H 4620 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4480 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 4550 4450 50  0001 C CNN
F 4 "C23162" H 4550 4450 50  0001 C CNN "LCSC"
	1    4550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4600 4250 4750
Wire Wire Line
	4550 4600 4550 4850
Connection ~ 4550 4850
Wire Wire Line
	4550 4850 4700 4850
Wire Wire Line
	4250 4300 4250 4050
Connection ~ 4250 4050
Wire Wire Line
	4250 4050 4550 4050
Wire Wire Line
	4550 4300 4550 4050
Connection ~ 4550 4050
Wire Wire Line
	4550 4050 5100 4050
NoConn ~ 8850 2100
NoConn ~ 7250 2200
NoConn ~ 7250 2300
NoConn ~ 7250 2400
NoConn ~ 7250 2500
NoConn ~ 7250 2600
NoConn ~ 6050 2500
NoConn ~ 3350 1750
NoConn ~ 3350 1850
NoConn ~ 3350 1950
NoConn ~ 3350 2150
NoConn ~ 3350 2250
NoConn ~ 3350 2350
NoConn ~ 3350 2450
NoConn ~ 4350 1450
NoConn ~ 4350 1550
NoConn ~ 4350 1850
NoConn ~ 4350 2650
NoConn ~ 4350 2750
$Comp
L tyre_temp_sense-rescue:R-Device R5
U 1 1 6128F5AB
P 6250 4550
F 0 "R5" H 6200 4900 50  0000 L CNN
F 1 "4.7K" H 6200 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6180 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 6250 4550 50  0001 C CNN
F 4 "C23162" H 6250 4550 50  0001 C CNN "LCSC"
	1    6250 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R6
U 1 1 61292862
P 6450 4550
F 0 "R6" H 6400 4900 50  0000 L CNN
F 1 "4.7K" H 6400 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 6450 4550 50  0001 C CNN
F 4 "C23162" H 6450 4550 50  0001 C CNN "LCSC"
	1    6450 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R7
U 1 1 61292868
P 6650 4550
F 0 "R7" H 6600 4900 50  0000 L CNN
F 1 "4.7K" H 6600 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 6650 4550 50  0001 C CNN
F 4 "C23162" H 6650 4550 50  0001 C CNN "LCSC"
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R8
U 1 1 612960CE
P 6850 4550
F 0 "R8" H 6800 4900 50  0000 L CNN
F 1 "4.7K" H 6800 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6780 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 6850 4550 50  0001 C CNN
F 4 "C23162" H 6850 4550 50  0001 C CNN "LCSC"
	1    6850 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R9
U 1 1 612960D4
P 7050 4550
F 0 "R9" H 7000 4900 50  0000 L CNN
F 1 "4.7K" H 7000 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 7050 4550 50  0001 C CNN
F 4 "C23162" H 7050 4550 50  0001 C CNN "LCSC"
	1    7050 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R10
U 1 1 612960DA
P 7250 4550
F 0 "R10" H 7200 4900 50  0000 L CNN
F 1 "4.7K" H 7200 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7180 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 7250 4550 50  0001 C CNN
F 4 "C23162" H 7250 4550 50  0001 C CNN "LCSC"
	1    7250 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R11
U 1 1 612960E0
P 7450 4550
F 0 "R11" H 7400 4900 50  0000 L CNN
F 1 "4.7K" H 7400 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7380 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810200710_UNI-ROYAL-Uniroyal-Elec-0603WAF4701T5E_C23162.pdf" H 7450 4550 50  0001 C CNN
F 4 "C23162" H 7450 4550 50  0001 C CNN "LCSC"
	1    7450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4750 6050 4750
Wire Wire Line
	5500 4850 6250 4850
Wire Wire Line
	5500 4950 6450 4950
Wire Wire Line
	5500 5050 6650 5050
Wire Wire Line
	5500 5150 6850 5150
Wire Wire Line
	5500 5250 7050 5250
Wire Wire Line
	5750 4050 5750 4400
Wire Wire Line
	5750 4400 6050 4400
Wire Wire Line
	5100 4050 5250 4050
Connection ~ 5250 4050
Wire Wire Line
	5250 4050 5750 4050
Connection ~ 6050 4400
Wire Wire Line
	6050 4400 6250 4400
Connection ~ 6250 4400
Wire Wire Line
	6250 4400 6450 4400
Connection ~ 6450 4400
Wire Wire Line
	6450 4400 6650 4400
Connection ~ 6650 4400
Wire Wire Line
	6650 4400 6850 4400
Connection ~ 6850 4400
Wire Wire Line
	6850 4400 7050 4400
Connection ~ 7050 4400
Wire Wire Line
	7050 4400 7250 4400
Connection ~ 7250 4400
Wire Wire Line
	7250 4400 7450 4400
Wire Wire Line
	6050 4700 6050 4750
Connection ~ 6050 4750
Wire Wire Line
	6250 4700 6250 4850
Connection ~ 6250 4850
Wire Wire Line
	6250 4850 8050 4850
Wire Wire Line
	6450 4700 6450 4950
Connection ~ 6450 4950
Wire Wire Line
	6650 4700 6650 5050
Connection ~ 6650 5050
Wire Wire Line
	6650 5050 8650 5050
Wire Wire Line
	6850 4700 6850 5150
Connection ~ 6850 5150
Wire Wire Line
	7050 4700 7050 5250
Connection ~ 7050 5250
Wire Wire Line
	7050 5250 9250 5250
Wire Wire Line
	7250 4700 7250 5350
Wire Wire Line
	5500 5350 7250 5350
Connection ~ 7250 5350
Wire Wire Line
	7450 4700 7450 5450
Wire Wire Line
	5500 5450 7450 5450
Connection ~ 7450 5450
$Comp
L tyre_temp_sense-rescue:+5V-power #PWR07
U 1 1 612EB81D
P 5100 3950
F 0 "#PWR07" H 5100 3800 50  0001 C CNN
F 1 "+5V" H 5115 4123 50  0000 C CNN
F 2 "" H 5100 3950 50  0001 C CNN
F 3 "" H 5100 3950 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3950 5100 4050
$Comp
L tyre_temp_sense-rescue:PWR_FLAG-power #FLG02
U 1 1 612F04CD
P 1850 1300
F 0 "#FLG02" H 1850 1375 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 1428 50  0000 L CNN
F 2 "" H 1850 1300 50  0001 C CNN
F 3 "~" H 1850 1300 50  0001 C CNN
	1    1850 1300
	0    1    1    0   
$EndComp
Connection ~ 1850 1300
Wire Wire Line
	1850 1300 1850 1400
Text Notes 6100 4050 0    50   ~ 0
i2c pullups
Text Notes 3800 3650 0    50   ~ 0
i2c multiplexer
Text Notes 10000 1250 0    50   ~ 0
optional CAN 120 ohm \n
NoConn ~ 3750 1050
Wire Wire Line
	3950 3050 3950 3100
Wire Wire Line
	3950 3100 3850 3100
Connection ~ 3850 3100
Wire Wire Line
	3850 3100 3850 3150
Text GLabel 2950 1650 0    50   Input ~ 0
D2
$Comp
L tyre_temp_sense-rescue:Arduino_Nano_v3.x-MCU_Module A1
U 1 1 61016BB2
P 3850 2050
F 0 "A1" H 2750 3100 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3050 3000 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3850 2050 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3850 2050 50  0001 C CNN
	1    3850 2050
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:PWR_FLAG-power #FLG01
U 1 1 6135F87C
P 1200 1550
F 0 "#FLG01" H 1200 1625 50  0001 C CNN
F 1 "PWR_FLAG" V 1200 1678 50  0000 L CNN
F 2 "" H 1200 1550 50  0001 C CNN
F 3 "~" H 1200 1550 50  0001 C CNN
	1    1200 1550
	0    1    1    0   
$EndComp
Connection ~ 1200 1550
Wire Wire Line
	1200 1550 1200 1500
Wire Wire Line
	1200 1200 1450 1200
$Comp
L tyre_temp_sense-rescue:TestPoint-Connector TP1
U 1 1 6137F93A
P 1200 1100
F 0 "TP1" H 1000 1250 50  0000 L CNN
F 1 "CAN_H" H 1200 1300 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1400 1100 50  0001 C CNN
F 3 "~" H 1400 1100 50  0001 C CNN
	1    1200 1100
	1    0    0    -1  
$EndComp
Connection ~ 1200 1200
$Comp
L tyre_temp_sense-rescue:TestPoint-Connector TP3
U 1 1 61381C92
P 1300 1100
F 0 "TP3" H 1350 1250 50  0000 L CNN
F 1 "CAN_L" H 1300 1300 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1500 1100 50  0001 C CNN
F 3 "~" H 1500 1100 50  0001 C CNN
	1    1300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1100 1200 1200
Wire Wire Line
	1300 1100 1300 1300
Wire Wire Line
	1200 1300 1300 1300
Wire Wire Line
	1300 1300 1450 1300
Connection ~ 1300 1300
Wire Wire Line
	2950 1650 3350 1650
Wire Wire Line
	2950 2050 3350 2050
$Comp
L tyre_temp_sense-rescue:TestPoint-Connector TP8
U 1 1 613E761C
P 3350 1450
F 0 "TP8" V 3350 1650 50  0000 L CNN
F 1 "RX" H 3200 1650 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3550 1450 50  0001 C CNN
F 3 "~" H 3550 1450 50  0001 C CNN
	1    3350 1450
	0    -1   -1   0   
$EndComp
$Comp
L tyre_temp_sense-rescue:TestPoint-Connector TP9
U 1 1 613E7C2F
P 3350 1550
F 0 "TP9" V 3350 1750 50  0000 L CNN
F 1 "TX" H 3200 1750 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3550 1550 50  0001 C CNN
F 3 "~" H 3550 1550 50  0001 C CNN
	1    3350 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 5750 4700 5850
Connection ~ 4700 5850
Wire Wire Line
	4700 5950 4700 6500
Wire Wire Line
	4700 5950 4700 5850
Connection ~ 4700 5950
$Comp
L tyre_temp_sense-rescue:TCA9548APWR-Interface_Expansion U1
U 1 1 6104696B
P 5100 5450
F 0 "U1" H 5650 6400 50  0000 C CNN
F 1 "TCA9548APWR" H 5650 6300 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 5100 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811081942_Texas-Instruments-TCA9548APWR_C130026.pdf" H 5150 5700 50  0001 C CNN
F 4 "C130026" H 5100 5450 50  0001 C CNN "LCSC"
	1    5100 5450
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:Conn_01x04_Male-Connector J7
U 1 1 613EDDA2
P 1050 4250
F 0 "J7" V 900 4300 50  0000 R CNN
F 1 "A" V 1000 4350 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1050 4250 50  0001 C CNN
F 3 "~" H 1050 4250 50  0001 C CNN
F 4 "" H 1050 4250 50  0001 C CNN "Note"
	1    1050 4250
	-1   0    0    1   
$EndComp
Text Notes 7350 7500 0    50   ~ 0
AUMT tyre temperature sensing control board
Wire Wire Line
	6300 1100 6300 1050
Wire Wire Line
	6650 1300 6650 1050
Connection ~ 6650 1050
Text Notes 4800 600  0    50   ~ 0
CAN Controller\n
Text Notes 8050 600  0    50   ~ 0
CAN Transceiver\n
Text Notes 2450 600  0    50   ~ 0
Arduino Nano
Wire Notes Line
	4750 475  4750 3550
Wire Notes Line
	8000 475  8000 3550
Wire Notes Line
	2400 475  2400 3550
Wire Notes Line
	475  3550 11225 3550
Text Notes 550  600  0    50   ~ 0
Input power and CAN\n
Text Notes 8000 4050 0    50   ~ 0
4 pin JST connector for each temp sensor
Wire Notes Line
	3250 3550 3250 7800
Text GLabel 850  4050 0    50   Input ~ 0
A0
Text GLabel 850  4150 0    50   Input ~ 0
A1
Text GLabel 850  4250 0    50   Input ~ 0
A2
Text GLabel 850  4350 0    50   Input ~ 0
A3
$Comp
L tyre_temp_sense-rescue:Conn_01x04_Male-Connector J8
U 1 1 610B8C24
P 1850 4400
F 0 "J8" V 1700 4450 50  0000 R CNN
F 1 "GND" V 1800 4500 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1850 4400 50  0001 C CNN
F 3 "~" H 1850 4400 50  0001 C CNN
F 4 "" H 1850 4400 50  0001 C CNN "Note"
	1    1850 4400
	-1   0    0    1   
$EndComp
$Comp
L tyre_temp_sense-rescue:Conn_01x04_Male-Connector J9
U 1 1 610B98EF
P 2650 4400
F 0 "J9" V 2500 4450 50  0000 R CNN
F 1 "GND" V 2600 4500 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2650 4400 50  0001 C CNN
F 3 "~" H 2650 4400 50  0001 C CNN
F 4 "" H 2650 4400 50  0001 C CNN "Note"
	1    2650 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 4200 1650 4300
Connection ~ 1650 4300
Wire Wire Line
	1650 4300 1650 4400
Connection ~ 1650 4400
Wire Wire Line
	1650 4400 1650 4500
Connection ~ 1650 4500
Wire Wire Line
	1650 4500 1650 4600
Wire Wire Line
	2450 4500 2450 4400
Connection ~ 2450 4200
Wire Wire Line
	2450 4200 2450 4150
Connection ~ 2450 4300
Wire Wire Line
	2450 4300 2450 4200
Connection ~ 2450 4400
Wire Wire Line
	2450 4400 2450 4300
$Comp
L tyre_temp_sense-rescue:GND-power #PWR024
U 1 1 610DA60C
P 1650 4600
F 0 "#PWR024" H 1650 4350 50  0001 C CNN
F 1 "GND-power" H 1655 4427 50  0000 C CNN
F 2 "" H 1650 4600 50  0001 C CNN
F 3 "" H 1650 4600 50  0001 C CNN
	1    1650 4600
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:+5V-power #PWR025
U 1 1 610DBC41
P 2450 4150
F 0 "#PWR025" H 2450 4000 50  0001 C CNN
F 1 "+5V-power" H 2465 4323 50  0000 C CNN
F 2 "" H 2450 4150 50  0001 C CNN
F 3 "" H 2450 4150 50  0001 C CNN
	1    2450 4150
	1    0    0    -1  
$EndComp
NoConn ~ 5500 5550
NoConn ~ 5500 5650
NoConn ~ 5500 5750
NoConn ~ 5500 5850
NoConn ~ 5500 5950
NoConn ~ 5500 6050
NoConn ~ 5500 6150
NoConn ~ 5500 6250
Text GLabel 4350 2050 2    50   Input ~ 0
A0
Text GLabel 4350 2150 2    50   Input ~ 0
A1
Text GLabel 4350 2250 2    50   Input ~ 0
A2
Text GLabel 4350 2350 2    50   Input ~ 0
A3
Wire Wire Line
	8150 4550 8150 4750
Wire Wire Line
	6050 4750 8150 4750
Wire Wire Line
	8050 4550 8050 4850
Wire Wire Line
	8750 4750 8750 4950
Wire Wire Line
	6450 4950 8750 4950
Wire Wire Line
	8650 4750 8650 5050
Wire Wire Line
	9350 4950 9350 5150
Wire Wire Line
	6850 5150 9350 5150
Wire Wire Line
	9250 4950 9250 5250
Wire Wire Line
	10000 5150 10000 5350
Wire Wire Line
	7250 5350 10000 5350
Wire Wire Line
	9900 5150 9900 5450
Wire Wire Line
	7450 5450 9900 5450
$Comp
L tyre_temp_sense-rescue:GND-power #PWR0101
U 1 1 610B5CC4
P 8850 4750
F 0 "#PWR0101" H 8850 4500 50  0001 C CNN
F 1 "GND-power" H 8855 4577 50  0000 C CNN
F 2 "" H 8850 4750 50  0001 C CNN
F 3 "" H 8850 4750 50  0001 C CNN
	1    8850 4750
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:GND-power #PWR0102
U 1 1 610B6CBC
P 8250 4550
F 0 "#PWR0102" H 8250 4300 50  0001 C CNN
F 1 "GND-power" H 8255 4377 50  0000 C CNN
F 2 "" H 8250 4550 50  0001 C CNN
F 3 "" H 8250 4550 50  0001 C CNN
	1    8250 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:GND-power #PWR0103
U 1 1 610B72FD
P 9450 4950
F 0 "#PWR0103" H 9450 4700 50  0001 C CNN
F 1 "GND-power" H 9455 4777 50  0000 C CNN
F 2 "" H 9450 4950 50  0001 C CNN
F 3 "" H 9450 4950 50  0001 C CNN
	1    9450 4950
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:GND-power #PWR0104
U 1 1 610B7852
P 10100 5150
F 0 "#PWR0104" H 10100 4900 50  0001 C CNN
F 1 "GND-power" H 10105 4977 50  0000 C CNN
F 2 "" H 10100 5150 50  0001 C CNN
F 3 "" H 10100 5150 50  0001 C CNN
	1    10100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5250 10200 5150
Wire Wire Line
	10350 5250 10200 5250
Wire Wire Line
	10350 5150 10350 5250
$Comp
L tyre_temp_sense-rescue:+3.3V-power #PWR0105
U 1 1 610B81BD
P 10350 5150
F 0 "#PWR0105" H 10350 5000 50  0001 C CNN
F 1 "+3.3V-power" V 10400 5400 50  0000 C CNN
F 2 "" H 10350 5150 50  0001 C CNN
F 3 "" H 10350 5150 50  0001 C CNN
	1    10350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5050 9550 4950
Wire Wire Line
	9700 5050 9550 5050
Wire Wire Line
	9700 4950 9700 5050
$Comp
L tyre_temp_sense-rescue:+3.3V-power #PWR0106
U 1 1 610CF39C
P 9700 4950
F 0 "#PWR0106" H 9700 4800 50  0001 C CNN
F 1 "+3.3V-power" V 9750 5250 50  0000 C CNN
F 2 "" H 9700 4950 50  0001 C CNN
F 3 "" H 9700 4950 50  0001 C CNN
	1    9700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4850 8950 4750
Wire Wire Line
	9100 4850 8950 4850
Wire Wire Line
	9100 4750 9100 4850
$Comp
L tyre_temp_sense-rescue:+3.3V-power #PWR0107
U 1 1 610D58E0
P 9100 4750
F 0 "#PWR0107" H 9100 4600 50  0001 C CNN
F 1 "+3.3V-power" V 9150 5000 50  0000 C CNN
F 2 "" H 9100 4750 50  0001 C CNN
F 3 "" H 9100 4750 50  0001 C CNN
	1    9100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4650 8350 4550
Wire Wire Line
	8500 4650 8350 4650
Wire Wire Line
	8500 4550 8500 4650
$Comp
L tyre_temp_sense-rescue:+3.3V-power #PWR0108
U 1 1 610DC232
P 8500 4550
F 0 "#PWR0108" H 8500 4400 50  0001 C CNN
F 1 "+3.3V-power" V 8550 4800 50  0000 C CNN
F 2 "" H 8500 4550 50  0001 C CNN
F 3 "" H 8500 4550 50  0001 C CNN
	1    8500 4550
	1    0    0    -1  
$EndComp
$Comp
L tyre_temp_sense-rescue:R-Device R14
U 1 1 610406E3
P 9900 1750
F 0 "R14" H 9970 1796 50  0000 L CNN
F 1 "120" H 9970 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9830 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810301422_UNI-ROYAL-Uniroyal-Elec-1206W4F1204T5E_C22107.pdf" H 9900 1750 50  0001 C CNN
F 4 "C22107" H 9900 1750 50  0001 C CNN "LCSC"
	1    9900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2750 3350 2750
Wire Wire Line
	2900 2650 3350 2650
Wire Wire Line
	2900 2550 3350 2550
Wire Wire Line
	1200 1400 1850 1400
$EndSCHEMATC
