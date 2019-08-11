EESchema Schematic File Version 4
LIBS:PF_apiner-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3150 5400 0    40   Input ~ 0
HS_CAN_TX
Text HLabel 3150 5500 0    40   Output ~ 0
HS_CAN_RX
$Comp
L OBDII_IoT:PESD1CAN U6
U 1 1 582F34D6
P 5300 6250
F 0 "U6" V 5500 6250 50  0000 C CNN
F 1 "PESD1CAN" V 5100 6200 50  0000 C CNN
F 2 "to-sod-sot:SC-70" H 5300 6250 60  0001 C CNN
F 3 "" H 5300 6250 60  0000 C CNN
F 4 "NXP USA Inc" H 5300 6250 60  0001 C CNN "Manf"
F 5 "TVS DIODE 24VWM 50VC SC70" H 5300 6250 60  0001 C CNN "Desc"
F 6 "PESD1CAN-UX" H 5300 6250 60  0001 C CNN "Manf#"
F 7 "568-10731-1-ND" H 5300 6250 60  0001 C CNN "Digikey#"
	1    5300 6250
	-1   0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR060
U 1 1 582F433E
P 5300 6700
F 0 "#PWR060" H 5300 6450 50  0001 C CNN
F 1 "GND" H 5300 6550 50  0001 C CNN
F 2 "" H 5300 6700 50  0000 C CNN
F 3 "" H 5300 6700 50  0000 C CNN
	1    5300 6700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:R R21
U 1 1 58B0A852
P 5750 5100
F 0 "R21" V 5830 5100 50  0000 C CNN
F 1 "120" V 5750 5100 50  0000 C CNN
F 2 "chip_rlc:c_0402" V 5680 5100 50  0001 C CNN
F 3 "" H 5750 5100 50  0000 C CNN
F 4 "RES SMD 120 OHM 5% 1/16W 0402" H 5750 5100 60  0001 C CNN "Desc"
F 5 "Yageo" H 5750 5100 60  0001 C CNN "Manf"
F 6 "RC0402JR-07120RL" H 5750 5100 60  0001 C CNN "Manf#"
F 7 "311-120JRCT-ND" H 5750 5100 60  0001 C CNN "Digikey#"
	1    5750 5100
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:MCP25612FD U4
U 1 1 58EEA34D
P 3450 5150
F 0 "U4" H 3500 5300 60  0000 C CNN
F 1 "MCP25612FD" H 3800 4200 60  0000 C CNN
F 2 "soic-sop-tssop:SOIC-14" H -2300 2900 60  0001 C CNN
F 3 "" H -2300 2900 60  0001 C CNN
F 4 "IC TRANSCEIVER CAN HI-SPD 14SOIC" H 3450 5150 60  0001 C CNN "Desc"
F 5 "Microchip" H 3450 5150 60  0001 C CNN "Manf"
F 6 "MCP25612FD-H/SL" H 3450 5150 60  0001 C CNN "Manf#"
F 7 "MCP25612FD-H/SL-ND" H 3450 5150 60  0001 C CNN "Digikey#"
	1    3450 5150
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:TH8056 U5
U 1 1 58F03C6E
P 3700 2950
F 0 "U5" H 3500 3100 60  0000 C CNN
F 1 "TH8056" H 3750 2500 60  0000 C CNN
F 2 "soic-sop-tssop:SOIC-8" H -3200 1250 60  0001 C CNN
F 3 "" H -3200 1250 60  0001 C CNN
F 4 "IC TXRX CAN 8SOIC" H 3700 2950 60  0001 C CNN "Desc"
F 5 "Melexis" H 3700 2950 60  0001 C CNN "Manf"
F 6 "TH8056KDC-AAA-008-RE" H 3700 2950 60  0001 C CNN "Manf#"
F 7 "TH8056KDC-AAA-008-RETR-ND" H 3700 2950 60  0001 C CNN "Digikey#"
	1    3700 2950
	1    0    0    -1  
$EndComp
Text HLabel 6750 5750 2    40   BiDi ~ 0
MS_CAN_HI
Text HLabel 6750 5850 2    40   BiDi ~ 0
MS_CAN_LO
Text HLabel 6750 5350 2    40   BiDi ~ 0
HS_CAN_HI
Text HLabel 6750 5450 2    40   BiDi ~ 0
HS_CAN_LO
Text HLabel 6300 3050 2    40   BiDi ~ 0
SW_CAN
Text HLabel 3150 5600 0    40   Input ~ 0
MS_CAN_TX
Text HLabel 3150 5700 0    40   Output ~ 0
MS_CAN_RX
Text HLabel 3150 2950 0    40   Input ~ 0
SW_CAN_TX
Text HLabel 3150 3250 0    40   Output ~ 0
SW_CAN_RX
Text HLabel 3150 3050 0    40   Input ~ 0
SW_CAN_MODE0
Text HLabel 3150 3150 0    40   Input ~ 0
SW_CAN_MODE1
Text HLabel 4850 3650 0    40   Input ~ 0
SW_CAN_LOAD
$Comp
L OBDII_IoT:+5V_SW #PWR061
U 1 1 58FD2521
P 3150 5100
F 0 "#PWR061" H 3150 5190 20  0001 C CNN
F 1 "+5V_SW" H 3150 5200 30  0000 C CNN
F 2 "" H 3150 5100 60  0000 C CNN
F 3 "" H 3150 5100 60  0000 C CNN
	1    3150 5100
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:PESD1CAN U7
U 1 1 58FD2706
P 6000 3650
F 0 "U7" V 6200 3650 50  0000 C CNN
F 1 "PESD1CAN" V 5800 3600 50  0000 C CNN
F 2 "to-sod-sot:SC-70" H 6000 3650 60  0001 C CNN
F 3 "" H 6000 3650 60  0000 C CNN
F 4 "NXP USA Inc" H 6000 3650 60  0001 C CNN "Manf"
F 5 "TVS DIODE 24VWM 50VC SC70" H 6000 3650 60  0001 C CNN "Desc"
F 6 "PESD1CAN-UX" H 6000 3650 60  0001 C CNN "Manf#"
F 7 "568-10731-1-ND" H 6000 3650 60  0001 C CNN "Digikey#"
	1    6000 3650
	-1   0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR062
U 1 1 58FD270C
P 6000 4050
F 0 "#PWR062" H 6000 3800 50  0001 C CNN
F 1 "GND" H 6000 3900 50  0001 C CNN
F 2 "" H 6000 4050 50  0000 C CNN
F 3 "" H 6000 4050 50  0000 C CNN
	1    6000 4050
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:R R17
U 1 1 58FD347C
P 4600 6100
F 0 "R17" V 4680 6100 50  0000 C CNN
F 1 "100" V 4600 6100 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 4530 6100 50  0001 C CNN
F 3 "" H 4600 6100 50  0000 C CNN
F 4 "RES SMD 100 OHM 5% 1/16W 0402" H 4600 6100 60  0001 C CNN "Desc"
F 5 "Yageo" H 4600 6100 60  0001 C CNN "Manf"
F 6 "RC0402JR-07100RL" H 4600 6100 60  0001 C CNN "Manf#"
F 7 "311-100JRCT-ND" H 4600 6100 60  0001 C CNN "Digikey#"
	1    4600 6100
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:C C19
U 1 1 58FD3B6F
P 4600 6450
F 0 "C19" V 4500 6400 50  0000 L CNN
F 1 "560 pF" V 4700 6300 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 4638 6300 50  0001 C CNN
F 3 "" H 4600 6450 50  0000 C CNN
F 4 "CAP CER 560PF 50V X7R 0402" H 4600 6450 60  0001 C CNN "Desc"
F 5 "Yageo" H 4600 6450 60  0001 C CNN "Manf"
F 6 "CC0402KRX7R9BB561" H 4600 6450 60  0001 C CNN "Manf#"
F 7 "311-1029-1-ND" H 4600 6450 60  0001 C CNN "Digikey#"
	1    4600 6450
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:R R19
U 1 1 58FD3FA7
P 4900 6100
F 0 "R19" V 4980 6100 50  0000 C CNN
F 1 "100" V 4900 6100 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 4830 6100 50  0001 C CNN
F 3 "" H 4900 6100 50  0000 C CNN
F 4 "RES SMD 100 OHM 5% 1/16W 0402" H 4900 6100 60  0001 C CNN "Desc"
F 5 "Yageo" H 4900 6100 60  0001 C CNN "Manf"
F 6 "RC0402JR-07100RL" H 4900 6100 60  0001 C CNN "Manf#"
F 7 "311-100JRCT-ND" H 4900 6100 60  0001 C CNN "Digikey#"
	1    4900 6100
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:C C20
U 1 1 58FD3FB1
P 4900 6450
F 0 "C20" V 4800 6400 50  0000 L CNN
F 1 "560 pF" V 5000 6300 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 4938 6300 50  0001 C CNN
F 3 "" H 4900 6450 50  0000 C CNN
F 4 "CAP CER 560PF 50V X7R 0402" H 4900 6450 60  0001 C CNN "Desc"
F 5 "Yageo" H 4900 6450 60  0001 C CNN "Manf"
F 6 "CC0402KRX7R9BB561" H 4900 6450 60  0001 C CNN "Manf#"
F 7 "311-1029-1-ND" H 4900 6450 60  0001 C CNN "Digikey#"
	1    4900 6450
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:PESD1CAN U8
U 1 1 58FD4234
P 6450 6250
F 0 "U8" V 6650 6250 50  0000 C CNN
F 1 "PESD1CAN" V 6250 6200 50  0000 C CNN
F 2 "to-sod-sot:SC-70" H 6450 6250 60  0001 C CNN
F 3 "" H 6450 6250 60  0000 C CNN
F 4 "NXP USA Inc" H 6450 6250 60  0001 C CNN "Manf"
F 5 "TVS DIODE 24VWM 50VC SC70" H 6450 6250 60  0001 C CNN "Desc"
F 6 "PESD1CAN-UX" H 6450 6250 60  0001 C CNN "Manf#"
F 7 "568-10731-1-ND" H 6450 6250 60  0001 C CNN "Digikey#"
	1    6450 6250
	-1   0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR063
U 1 1 58FD423A
P 6450 6700
F 0 "#PWR063" H 6450 6450 50  0001 C CNN
F 1 "GND" H 6450 6550 50  0001 C CNN
F 2 "" H 6450 6700 50  0000 C CNN
F 3 "" H 6450 6700 50  0000 C CNN
	1    6450 6700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:R R22
U 1 1 58FD4244
P 5750 6100
F 0 "R22" V 5830 6100 50  0000 C CNN
F 1 "100" V 5750 6100 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 5680 6100 50  0001 C CNN
F 3 "" H 5750 6100 50  0000 C CNN
F 4 "RES SMD 100 OHM 5% 1/16W 0402" H 5750 6100 60  0001 C CNN "Desc"
F 5 "Yageo" H 5750 6100 60  0001 C CNN "Manf"
F 6 "RC0402JR-07100RL" H 5750 6100 60  0001 C CNN "Manf#"
F 7 "311-100JRCT-ND" H 5750 6100 60  0001 C CNN "Digikey#"
	1    5750 6100
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:C C22
U 1 1 58FD424E
P 5750 6450
F 0 "C22" V 5650 6400 50  0000 L CNN
F 1 "560 pF" V 5850 6300 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 5788 6300 50  0001 C CNN
F 3 "" H 5750 6450 50  0000 C CNN
F 4 "CAP CER 560PF 50V X7R 0402" H 5750 6450 60  0001 C CNN "Desc"
F 5 "Yageo" H 5750 6450 60  0001 C CNN "Manf"
F 6 "CC0402KRX7R9BB561" H 5750 6450 60  0001 C CNN "Manf#"
F 7 "311-1029-1-ND" H 5750 6450 60  0001 C CNN "Digikey#"
	1    5750 6450
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:R R24
U 1 1 58FD4258
P 6050 6100
F 0 "R24" V 6130 6100 50  0000 C CNN
F 1 "100" V 6050 6100 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 5980 6100 50  0001 C CNN
F 3 "" H 6050 6100 50  0000 C CNN
F 4 "RES SMD 100 OHM 5% 1/16W 0402" H 6050 6100 60  0001 C CNN "Desc"
F 5 "Yageo" H 6050 6100 60  0001 C CNN "Manf"
F 6 "RC0402JR-07100RL" H 6050 6100 60  0001 C CNN "Manf#"
F 7 "311-100JRCT-ND" H 6050 6100 60  0001 C CNN "Digikey#"
	1    6050 6100
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:C C23
U 1 1 58FD4262
P 6050 6450
F 0 "C23" V 5950 6400 50  0000 L CNN
F 1 "560 pF" V 6150 6300 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 6088 6300 50  0001 C CNN
F 3 "" H 6050 6450 50  0000 C CNN
F 4 "CAP CER 560PF 50V X7R 0402" H 6050 6450 60  0001 C CNN "Desc"
F 5 "Yageo" H 6050 6450 60  0001 C CNN "Manf"
F 6 "CC0402KRX7R9BB561" H 6050 6450 60  0001 C CNN "Manf#"
F 7 "311-1029-1-ND" H 6050 6450 60  0001 C CNN "Digikey#"
	1    6050 6450
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR064
U 1 1 58FD430C
P 4350 6700
F 0 "#PWR064" H 4350 6450 50  0001 C CNN
F 1 "GND" H 4350 6550 50  0001 C CNN
F 2 "" H 4350 6700 50  0000 C CNN
F 3 "" H 4350 6700 50  0000 C CNN
	1    4350 6700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR065
U 1 1 58FD8A39
P 4600 6700
F 0 "#PWR065" H 4600 6450 50  0001 C CNN
F 1 "GND" H 4600 6550 50  0001 C CNN
F 2 "" H 4600 6700 50  0000 C CNN
F 3 "" H 4600 6700 50  0000 C CNN
	1    4600 6700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR066
U 1 1 58FD8A60
P 4900 6700
F 0 "#PWR066" H 4900 6450 50  0001 C CNN
F 1 "GND" H 4900 6550 50  0001 C CNN
F 2 "" H 4900 6700 50  0000 C CNN
F 3 "" H 4900 6700 50  0000 C CNN
	1    4900 6700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR067
U 1 1 58FD8B4B
P 5750 6700
F 0 "#PWR067" H 5750 6450 50  0001 C CNN
F 1 "GND" H 5750 6550 50  0001 C CNN
F 2 "" H 5750 6700 50  0000 C CNN
F 3 "" H 5750 6700 50  0000 C CNN
	1    5750 6700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR068
U 1 1 58FD8B72
P 6050 6700
F 0 "#PWR068" H 6050 6450 50  0001 C CNN
F 1 "GND" H 6050 6550 50  0001 C CNN
F 2 "" H 6050 6700 50  0000 C CNN
F 3 "" H 6050 6700 50  0000 C CNN
	1    6050 6700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR069
U 1 1 58FD9262
P 2500 5700
F 0 "#PWR069" H 2500 5450 50  0001 C CNN
F 1 "GND" H 2500 5550 50  0001 C CNN
F 2 "" H 2500 5700 50  0000 C CNN
F 3 "" H 2500 5700 50  0000 C CNN
	1    2500 5700
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:R R23
U 1 1 58FDA2D5
P 6050 5100
F 0 "R23" V 6130 5100 50  0000 C CNN
F 1 "120" V 6050 5100 50  0000 C CNN
F 2 "chip_rlc:c_0402" V 5980 5100 50  0001 C CNN
F 3 "" H 6050 5100 50  0000 C CNN
F 4 "RES SMD 120 OHM 5% 1/16W 0402" H 6050 5100 60  0001 C CNN "Desc"
F 5 "Yageo" H 6050 5100 60  0001 C CNN "Manf"
F 6 "RC0402JR-07120RL" H 6050 5100 60  0001 C CNN "Manf#"
F 7 "311-120JRCT-ND" H 6050 5100 60  0001 C CNN "Digikey#"
	1    6050 5100
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:C C16
U 1 1 58FDBFE9
P 2300 5250
F 0 "C16" V 2200 5200 50  0000 L CNN
F 1 "0.1uF" V 2400 5150 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 2338 5100 50  0001 C CNN
F 3 "" H 2300 5250 50  0000 C CNN
F 4 "CAP CER 0.1UF 10V X5R 0402" H 2300 5250 60  0001 C CNN "Desc"
F 5 "Yageo" H 2300 5250 60  0001 C CNN "Manf"
F 6 "CC0402KRX5R6BB104" H 2300 5250 60  0001 C CNN "Manf#"
F 7 "311-1336-1-ND" H 2300 5250 60  0001 C CNN "Digikey#"
	1    2300 5250
	0    1    1    0   
$EndComp
$Comp
L OBDII_IoT:+5V_SW #PWR070
U 1 1 58FDC0F6
P 2100 5100
F 0 "#PWR070" H 2100 5190 20  0001 C CNN
F 1 "+5V_SW" H 2100 5200 30  0000 C CNN
F 2 "" H 2100 5100 60  0000 C CNN
F 3 "" H 2100 5100 60  0000 C CNN
	1    2100 5100
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:C C17
U 1 1 58FDC125
P 2300 5550
F 0 "C17" V 2200 5500 50  0000 L CNN
F 1 "0.1uF" V 2400 5450 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 2338 5400 50  0001 C CNN
F 3 "" H 2300 5550 50  0000 C CNN
F 4 "CAP CER 0.1UF 10V X5R 0402" H 2300 5550 60  0001 C CNN "Desc"
F 5 "Yageo" H 2300 5550 60  0001 C CNN "Manf"
F 6 "CC0402KRX5R6BB104" H 2300 5550 60  0001 C CNN "Manf#"
F 7 "311-1336-1-ND" H 2300 5550 60  0001 C CNN "Digikey#"
	1    2300 5550
	0    1    1    0   
$EndComp
$Comp
L OBDII_IoT:GND #PWR071
U 1 1 58FDC707
P 3200 6000
F 0 "#PWR071" H 3200 5750 50  0001 C CNN
F 1 "GND" H 3200 5850 50  0001 C CNN
F 2 "" H 3200 6000 50  0000 C CNN
F 3 "" H 3200 6000 50  0000 C CNN
	1    3200 6000
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:+3.3V #PWR072
U 1 1 58FDF90E
P 3200 2550
F 0 "#PWR072" H 3250 2600 20  0001 C CNN
F 1 "+3.3V" H 3200 2650 30  0000 C CNN
F 2 "" H -3550 -2150 60  0000 C CNN
F 3 "" H -3550 -2150 60  0000 C CNN
	1    3200 2550
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:DLC #PWR073
U 1 1 58FE3EFD
P 4300 2550
F 0 "#PWR073" H 4300 2640 20  0001 C CNN
F 1 "DLC" H 4300 2650 30  0000 C CNN
F 2 "" H 4300 2550 60  0000 C CNN
F 3 "" H 4300 2550 60  0000 C CNN
	1    4300 2550
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:C C18
U 1 1 58FE50CB
P 4100 2600
F 0 "C18" V 4000 2550 50  0000 L CNN
F 1 "10uF 25V" V 4200 2400 50  0000 L CNN
F 2 "chip_rlc:c_0805" H 4138 2450 50  0001 C CNN
F 3 "" H 4100 2600 50  0000 C CNN
F 4 "CAP CER 10UF 25V X5R 0805" H 4100 2600 60  0001 C CNN "Desc"
F 5 "Taiyo Yuden" H 4100 2600 60  0001 C CNN "Manf"
F 6 "TMK212BBJ106KG-T" H 4100 2600 60  0001 C CNN "Manf#"
F 7 "587-2985-6-ND" H 4100 2600 60  0001 C CNN "Digikey#"
	1    4100 2600
	0    1    1    0   
$EndComp
$Comp
L OBDII_IoT:GND #PWR074
U 1 1 58FE53E1
P 3850 2650
F 0 "#PWR074" H 3850 2400 50  0001 C CNN
F 1 "GND" H 3850 2500 50  0001 C CNN
F 2 "" H 3850 2650 50  0000 C CNN
F 3 "" H 3850 2650 50  0000 C CNN
	1    3850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5250 4350 5250
Wire Wire Line
	4350 5250 4350 5650
Wire Wire Line
	4300 5650 4350 5650
Connection ~ 4350 5650
Wire Wire Line
	4300 5350 4600 5350
Wire Wire Line
	4300 5450 4900 5450
Wire Wire Line
	6450 6700 6450 6600
Wire Wire Line
	6050 6700 6050 6600
Wire Wire Line
	5750 6700 5750 6600
Wire Wire Line
	5300 6700 5300 6600
Wire Wire Line
	4900 6700 4900 6600
Wire Wire Line
	4600 6700 4600 6600
Wire Wire Line
	4300 5750 5750 5750
Wire Wire Line
	4300 5850 6050 5850
Wire Wire Line
	4600 5950 4600 5350
Connection ~ 4600 5350
Wire Wire Line
	4900 5950 4900 5450
Connection ~ 4900 5450
Wire Wire Line
	5250 5950 5250 5350
Connection ~ 5250 5350
Wire Wire Line
	5350 5950 5350 5450
Connection ~ 5350 5450
Wire Wire Line
	5750 5950 5750 5750
Connection ~ 5750 5750
Wire Wire Line
	6050 5950 6050 5850
Connection ~ 6050 5850
Wire Wire Line
	3150 5250 3250 5250
Wire Wire Line
	3150 5100 3150 5150
Wire Wire Line
	3250 5150 3150 5150
Connection ~ 3150 5150
Wire Wire Line
	3250 5400 3150 5400
Wire Wire Line
	3250 5500 3150 5500
Wire Wire Line
	3250 5600 3150 5600
Wire Wire Line
	3250 5700 3150 5700
Wire Wire Line
	4600 6300 4600 6250
Wire Wire Line
	4900 6300 4900 6250
Wire Wire Line
	5750 6300 5750 6250
Wire Wire Line
	6050 6300 6050 6250
Wire Wire Line
	5750 5250 5750 5350
Connection ~ 5750 5350
Wire Wire Line
	5750 4950 5850 4950
Wire Wire Line
	5850 4950 5850 5450
Connection ~ 5850 5450
Wire Wire Line
	6050 5250 6050 5750
Connection ~ 6050 5750
Wire Wire Line
	6050 4950 6150 4950
Wire Wire Line
	6150 4950 6150 5850
Connection ~ 6150 5850
Wire Wire Line
	2500 5250 2500 5550
Wire Wire Line
	2500 5250 2450 5250
Wire Wire Line
	2450 5550 2500 5550
Connection ~ 2500 5550
Wire Wire Line
	2100 5550 2150 5550
Wire Wire Line
	2100 5100 2100 5250
Wire Wire Line
	2150 5250 2100 5250
Connection ~ 2100 5250
Wire Wire Line
	3200 5850 3200 5950
Wire Wire Line
	3200 5850 3250 5850
Wire Wire Line
	3250 5950 3200 5950
Connection ~ 3200 5950
Wire Wire Line
	3150 3250 3200 3250
Wire Wire Line
	3150 3150 3250 3150
Wire Wire Line
	3250 3050 3150 3050
Wire Wire Line
	3150 2950 3250 2950
Connection ~ 3200 3250
Wire Wire Line
	4300 2550 4300 2600
Wire Wire Line
	4300 2950 4250 2950
Wire Wire Line
	3850 2600 3950 2600
Wire Wire Line
	4250 2600 4300 2600
Connection ~ 4300 2600
Wire Wire Line
	3200 2600 3200 2550
Wire Wire Line
	3200 2900 3200 3250
Wire Wire Line
	3850 2650 3850 2600
$Comp
L OBDII_IoT:MOS_N Q6
U 1 1 58FE7544
P 5150 3650
F 0 "Q6" H 5100 3850 50  0000 R CNN
F 1 "2N7002" V 5300 3750 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 5150 3650 60  0001 C CNN
F 3 "" H 5150 3650 60  0000 C CNN
F 4 "MOSFET N-CH 60V 260MA SOT-23" H 5150 3650 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 5150 3650 60  0001 C CNN "Manf"
F 6 "2N7002ET1G" H 5150 3650 60  0001 C CNN "Manf#"
F 7 "2N7002ET1GOSCT-ND" H 5150 3650 60  0001 C CNN "Digikey#"
	1    5150 3650
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:R R16
U 1 1 58FE76BB
P 4600 3250
F 0 "R16" V 4680 3250 50  0000 C CNN
F 1 "6,49K" V 4600 3250 40  0000 C CNN
F 2 "chip_rlc:r_0805" V 4530 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0000 C CNN
F 4 "RES SMD 6.49K OHM 1% 1/8W 0805" H 4600 3250 60  0001 C CNN "Desc"
F 5 "Yageo" H 4600 3250 60  0001 C CNN "Manf"
F 6 "RC0805FR-076K49L" H 4600 3250 60  0001 C CNN "Manf#"
F 7 "311-6.49KCRCT-ND" H 4600 3250 60  0001 C CNN "Digikey#"
	1    4600 3250
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:R R20
U 1 1 58FE7CFE
P 5250 3250
F 0 "R20" V 5330 3250 50  0000 C CNN
F 1 "130" V 5250 3250 50  0000 C CNN
F 2 "chip_rlc:r_2512" V 5180 3250 50  0001 C CNN
F 3 "" H 5250 3250 50  0000 C CNN
F 4 "RES SMD 130 OHM 1% 2W 2512" H 5250 3250 60  0001 C CNN "Desc"
F 5 "TE Connectivity" H 5250 3250 60  0001 C CNN "Manf"
F 6 "3521130RFT" H 5250 3250 60  0001 C CNN "Manf#"
F 7 "A116011CT-ND" H 5250 3250 60  0001 C CNN "Digikey#"
	1    5250 3250
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:R R18
U 1 1 58FEA340
P 4900 3850
F 0 "R18" V 4980 3850 50  0000 C CNN
F 1 "10K" V 4900 3850 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 4830 3850 50  0001 C CNN
F 3 "" H 4900 3850 50  0000 C CNN
F 4 "Yageo" H 4900 3850 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 4900 3850 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 4900 3850 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 4900 3850 60  0001 C CNN "Digikey#"
	1    4900 3850
	-1   0    0    1   
$EndComp
$Comp
L OBDII_IoT:GND #PWR075
U 1 1 58FEA42D
P 5250 4050
F 0 "#PWR075" H 5250 3800 50  0001 C CNN
F 1 "GND" H 5250 3900 50  0001 C CNN
F 2 "" H 5250 4050 50  0000 C CNN
F 3 "" H 5250 4050 50  0000 C CNN
	1    5250 4050
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:C C21
U 1 1 58FEA778
P 5550 3550
F 0 "C21" V 5450 3500 50  0000 L CNN
F 1 "150 pF" V 5650 3400 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 5588 3400 50  0001 C CNN
F 3 "" H 5550 3550 50  0000 C CNN
F 4 "CAP CER 150PF 50V C0G/NP0 0402" H 5550 3550 60  0001 C CNN "Desc"
F 5 "Murata" H 5550 3550 60  0001 C CNN "Manf"
F 6 "GRM1555C1H151JA01D" H 5550 3550 60  0001 C CNN "Manf#"
F 7 "490-3229-1-ND" H 5550 3550 60  0001 C CNN "Digikey#"
	1    5550 3550
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR076
U 1 1 58FEAC5F
P 4300 4050
F 0 "#PWR076" H 4300 3800 50  0001 C CNN
F 1 "GND" H 4300 3900 50  0001 C CNN
F 2 "" H 4300 4050 50  0000 C CNN
F 3 "" H 4300 4050 50  0000 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3850 5250 4000
Wire Wire Line
	4900 4000 5250 4000
Connection ~ 5250 4000
Wire Wire Line
	4850 3650 4900 3650
Wire Wire Line
	4900 3700 4900 3650
Connection ~ 4900 3650
Wire Wire Line
	4250 3050 4600 3050
Wire Wire Line
	4250 3150 4400 3150
Wire Wire Line
	4400 3150 4400 3400
Wire Wire Line
	4400 3400 4600 3400
Wire Wire Line
	4600 3100 4600 3050
Connection ~ 4600 3050
Wire Wire Line
	5250 3100 5250 3050
Connection ~ 5250 3050
Wire Wire Line
	4300 4050 4300 3250
Wire Wire Line
	4300 3250 4250 3250
Wire Wire Line
	5250 3450 5250 3400
$Comp
L OBDII_IoT:GND #PWR077
U 1 1 58FEBC1A
P 5550 4050
F 0 "#PWR077" H 5550 3800 50  0001 C CNN
F 1 "GND" H 5550 3900 50  0001 C CNN
F 2 "" H 5550 4050 50  0000 C CNN
F 3 "" H 5550 4050 50  0000 C CNN
	1    5550 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4050 5550 3700
Wire Wire Line
	5550 3400 5550 3050
Connection ~ 5550 3050
Wire Wire Line
	5950 3350 5950 3050
Connection ~ 5950 3050
Wire Wire Line
	6050 3350 6050 3050
Connection ~ 6050 3050
Wire Wire Line
	6000 4000 6000 4050
$Comp
L OBDII_IoT:R R15
U 1 1 58FE8C9D
P 3200 2750
F 0 "R15" V 3300 2750 50  0000 C CNN
F 1 "1,5K" V 3200 2750 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 3130 2750 50  0001 C CNN
F 3 "" H 3200 2750 50  0000 C CNN
F 4 "RES SMD 1.5K OHM 1% 1/16W 0402" H 3200 2750 60  0001 C CNN "Desc"
F 5 "Yageo" H 3200 2750 60  0001 C CNN "Manf"
F 6 "RC0402FR-071K5L" H 3200 2750 60  0001 C CNN "Manf#"
F 7 "311-1.50KLRCT-ND" H 3200 2750 60  0001 C CNN "Digikey#"
	1    3200 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 5950 6500 5750
Connection ~ 6500 5750
Wire Wire Line
	6400 5950 6400 5850
Connection ~ 6400 5850
Wire Wire Line
	4350 5650 4350 6700
Wire Wire Line
	4600 5350 5250 5350
Wire Wire Line
	4900 5450 5350 5450
Wire Wire Line
	5250 5350 5750 5350
Wire Wire Line
	5350 5450 5850 5450
Wire Wire Line
	5750 5750 6050 5750
Wire Wire Line
	6050 5850 6150 5850
Wire Wire Line
	3150 5150 3150 5250
Wire Wire Line
	5750 5350 6750 5350
Wire Wire Line
	5850 5450 6750 5450
Wire Wire Line
	6050 5750 6500 5750
Wire Wire Line
	6150 5850 6400 5850
Wire Wire Line
	2500 5550 2500 5700
Wire Wire Line
	2100 5250 2100 5550
Wire Wire Line
	3200 5950 3200 6000
Wire Wire Line
	3200 3250 3250 3250
Wire Wire Line
	4300 2600 4300 2950
Wire Wire Line
	5250 4000 5250 4050
Wire Wire Line
	4900 3650 4950 3650
Wire Wire Line
	4600 3050 5250 3050
Wire Wire Line
	5250 3050 5550 3050
Wire Wire Line
	5550 3050 5950 3050
Wire Wire Line
	5950 3050 6050 3050
Wire Wire Line
	6500 5750 6750 5750
Wire Wire Line
	6400 5850 6750 5850
Wire Wire Line
	6050 3050 6300 3050
$EndSCHEMATC
