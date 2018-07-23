EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:PESD1CAN
LIBS:stn2120
LIBS:switches
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
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
L CONN_01X16 J5
U 1 1 5AFCB095
P 2450 3650
F 0 "J5" H 2450 4500 50  0000 C CNN
F 1 "OBD2_CONNECTOR" V 2550 3650 50  0000 C CNN
F 2 "" H 2450 3650 50  0001 C CNN
F 3 "" H 2450 3650 50  0001 C CNN
	1    2450 3650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR043
U 1 1 5AFCB20C
P 2750 4000
F 0 "#PWR043" H 2750 3750 50  0001 C CNN
F 1 "GND" H 2750 3850 50  0000 C CNN
F 2 "" H 2750 4000 50  0001 C CNN
F 3 "" H 2750 4000 50  0001 C CNN
	1    2750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2900 3800 2900
Wire Wire Line
	2650 4000 2650 4100
Text HLabel 7350 3100 2    60   UnSpc ~ 0
VCC_SAFE
Text HLabel 3800 3900 2    60   BiDi ~ 0
HS_CAN_TX_OBD
Text HLabel 3800 3100 2    60   BiDi ~ 0
HS_CAN_LO_OBD
Text HLabel 3800 4200 2    60   BiDi ~ 0
MS_CAN_HI_OBD
Text HLabel 3800 3400 2    60   BiDi ~ 0
MS_CAN_LO_OBD
Text HLabel 3800 4400 2    60   BiDi ~ 0
SW_CAN_OBD
Text HLabel 3800 3800 2    60   BiDi ~ 0
K-LINE_OBD
Text HLabel 3800 3000 2    60   BiDi ~ 0
L-LINE_OBD
Text HLabel 3800 4300 2    60   BiDi ~ 0
J1850_BUS+_OBD
Text HLabel 3800 3500 2    60   BiDi ~ 0
J1850_BUS-_OBD
Wire Wire Line
	2650 3900 3800 3900
Wire Wire Line
	2650 3100 3800 3100
Wire Wire Line
	2650 4200 3800 4200
Wire Wire Line
	2650 3400 3800 3400
Wire Wire Line
	2650 4400 3800 4400
Wire Wire Line
	2650 3800 3800 3800
Wire Wire Line
	2650 3000 3800 3000
Wire Wire Line
	2650 4300 3800 4300
Wire Wire Line
	3800 3500 2650 3500
NoConn ~ 2650 3700
NoConn ~ 2650 3600
NoConn ~ 2650 3300
NoConn ~ 2650 3200
$Comp
L PESD1CAN D6
U 1 1 5AFD7B19
P 2800 5100
F 0 "D6" H 2800 5551 50  0000 L BNN
F 1 "PESD1CAN" H 2800 5000 50  0000 L BNN
F 2 "SOT23-3" H 2800 5100 50  0001 L BNN
F 3 "NXP Semiconductors" H 2800 5100 50  0001 L BNN
F 4 "SOT-23 NXP Semiconductors" H 2800 5100 50  0001 L BNN "Field4"
F 5 "None" H 2800 5100 50  0001 L BNN "Field5"
F 6 "Unavailable" H 2800 5100 50  0001 L BNN "Field6"
F 7 "PESD1CAN" H 2800 5100 50  0001 L BNN "Field7"
F 8 "Sup/Pesd1can, Sot23" H 2800 5100 50  0001 L BNN "Field8"
	1    2800 5100
	0    1    1    0   
$EndComp
$Comp
L PESD1CAN D7
U 1 1 5AFD7C20
P 3500 5100
F 0 "D7" H 3500 5551 50  0000 L BNN
F 1 "PESD1CAN" H 3500 5000 50  0000 L BNN
F 2 "SOT23-3" H 3500 5100 50  0001 L BNN
F 3 "NXP Semiconductors" H 3500 5100 50  0001 L BNN
F 4 "SOT-23 NXP Semiconductors" H 3500 5100 50  0001 L BNN "Field4"
F 5 "None" H 3500 5100 50  0001 L BNN "Field5"
F 6 "Unavailable" H 3500 5100 50  0001 L BNN "Field6"
F 7 "PESD1CAN" H 3500 5100 50  0001 L BNN "Field7"
F 8 "Sup/Pesd1can, Sot23" H 3500 5100 50  0001 L BNN "Field8"
	1    3500 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR044
U 1 1 5AFD7C77
P 3300 5750
F 0 "#PWR044" H 3300 5500 50  0001 C CNN
F 1 "GND" H 3300 5600 50  0000 C CNN
F 2 "" H 3300 5750 50  0001 C CNN
F 3 "" H 3300 5750 50  0001 C CNN
	1    3300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5700 3700 5700
Wire Wire Line
	3300 5750 3300 5700
Connection ~ 3300 5700
Wire Wire Line
	2650 4000 2750 4000
Text Label 2900 4900 0    60   ~ 0
6
Text Label 2850 3900 0    60   ~ 0
6
Text Label 3100 4900 0    60   ~ 0
14
Text Label 2850 3100 0    60   ~ 0
14
Text Label 3600 4900 0    60   ~ 0
3
Text Label 2850 4200 0    60   ~ 0
3
Text Label 3800 4900 0    60   ~ 0
11
Text Label 2850 3400 0    60   ~ 0
11
$Comp
L D_Schottky_x2_ACom_KKA D8
U 1 1 5AFD819A
P 4850 5250
F 0 "D8" H 4900 5150 50  0000 C CNN
F 1 "MMBZ27VAL" H 4850 5350 50  0000 C CNN
F 2 "" H 4850 5250 50  0001 C CNN
F 3 "" H 4850 5250 50  0001 C CNN
	1    4850 5250
	-1   0    0    -1  
$EndComp
$Comp
L D_Schottky_x2_ACom_KKA D9
U 1 1 5AFD8202
P 5950 5250
F 0 "D9" H 6000 5150 50  0000 C CNN
F 1 "MMBZ27VAL" H 5950 5350 50  0000 C CNN
F 2 "" H 5950 5250 50  0001 C CNN
F 3 "" H 5950 5250 50  0001 C CNN
	1    5950 5250
	-1   0    0    -1  
$EndComp
$Comp
L D_Schottky_x2_ACom_KKA D10
U 1 1 5AFD828F
P 7100 5400
F 0 "D10" H 7150 5300 50  0000 C CNN
F 1 "MMBZ27VAL" H 7100 5500 50  0000 C CNN
F 2 "" H 7100 5400 50  0001 C CNN
F 3 "" H 7100 5400 50  0001 C CNN
	1    7100 5400
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR045
U 1 1 5AFD853B
P 5950 5550
F 0 "#PWR045" H 5950 5300 50  0001 C CNN
F 1 "GND" H 5950 5400 50  0000 C CNN
F 2 "" H 5950 5550 50  0001 C CNN
F 3 "" H 5950 5550 50  0001 C CNN
	1    5950 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 5AFD8558
P 4850 5550
F 0 "#PWR046" H 4850 5300 50  0001 C CNN
F 1 "GND" H 4850 5400 50  0000 C CNN
F 2 "" H 4850 5550 50  0001 C CNN
F 3 "" H 4850 5550 50  0001 C CNN
	1    4850 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 5AFD85BB
P 7100 5850
F 0 "#PWR047" H 7100 5600 50  0001 C CNN
F 1 "GND" H 7100 5700 50  0000 C CNN
F 2 "" H 7100 5850 50  0001 C CNN
F 3 "" H 7100 5850 50  0001 C CNN
	1    7100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5450 4850 5550
Wire Wire Line
	5950 5450 5950 5550
Wire Wire Line
	7100 5700 7100 5850
NoConn ~ 7300 5400
Text Label 7100 4850 0    60   ~ 0
1
Text Label 2850 4400 0    60   ~ 0
1
Text Label 4550 4900 0    60   ~ 0
7
Text Label 2850 3800 0    60   ~ 0
7
Text Label 5150 4900 0    60   ~ 0
15
Text Label 2850 3000 0    60   ~ 0
15
Text Label 5650 4900 0    60   ~ 0
2
Text Label 6250 4900 0    60   ~ 0
10
Text Label 2850 4300 0    60   ~ 0
2
Text Label 2850 3500 0    60   ~ 0
10
Wire Wire Line
	4550 5250 4550 4900
Wire Wire Line
	5150 5250 5150 4900
Wire Wire Line
	5650 5250 5650 4900
Wire Wire Line
	6250 5250 6250 4900
Wire Wire Line
	7100 5100 7100 4850
$Comp
L Polyfuse F1
U 1 1 5AFD97C6
P 6300 3100
F 0 "F1" V 6200 3100 50  0000 C CNN
F 1 "PTS181230V020" V 6400 3100 50  0000 C CNN
F 2 "" H 6350 2900 50  0001 L CNN
F 3 "" H 6300 3100 50  0001 C CNN
	1    6300 3100
	0    1    1    0   
$EndComp
$Comp
L D S2A1
U 1 1 5AFD981B
P 6900 3100
F 0 "S2A1" H 6900 3200 50  0000 C CNN
F 1 "D" H 6900 3000 50  0000 C CNN
F 2 "" H 6900 3100 50  0001 C CNN
F 3 "" H 6900 3100 50  0001 C CNN
	1    6900 3100
	-1   0    0    1   
$EndComp
$Comp
L D PTVS15VP1UP,115
U 1 1 5AFD9876
P 6650 3450
F 0 "PTVS15VP1UP,115" V 6750 3550 50  0000 C CNN
F 1 "D" H 6650 3350 50  0000 C CNN
F 2 "" H 6650 3450 50  0001 C CNN
F 3 "" H 6650 3450 50  0001 C CNN
	1    6650 3450
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5AFD98BC
P 5850 3450
F 0 "C3" H 5875 3550 50  0000 L CNN
F 1 "10n 100V" H 5875 3350 50  0000 L CNN
F 2 "" H 5888 3300 50  0001 C CNN
F 3 "" H 5850 3450 50  0001 C CNN
	1    5850 3450
	1    0    0    -1  
$EndComp
Text HLabel 3800 2900 2    60   UnSpc ~ 0
V_BAT
Wire Wire Line
	3150 2700 3150 2900
Connection ~ 3150 2900
Wire Wire Line
	5700 2700 5700 3100
Wire Wire Line
	5700 3100 6150 3100
Wire Wire Line
	5850 3300 5850 3100
Connection ~ 5850 3100
Wire Wire Line
	6450 3100 6750 3100
Wire Wire Line
	7050 3100 7350 3100
Wire Wire Line
	6650 3300 6650 3100
Connection ~ 6650 3100
$Comp
L GND #PWR048
U 1 1 5AFDA018
P 6300 3700
F 0 "#PWR048" H 6300 3450 50  0001 C CNN
F 1 "GND" H 6300 3550 50  0000 C CNN
F 2 "" H 6300 3700 50  0001 C CNN
F 3 "" H 6300 3700 50  0001 C CNN
	1    6300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3600 5850 3650
Wire Wire Line
	5850 3650 6650 3650
Wire Wire Line
	6650 3650 6650 3600
Wire Wire Line
	6300 3700 6300 3650
Connection ~ 6300 3650
Wire Wire Line
	3150 2700 5700 2700
Text Notes 6000 2950 0    60   ~ 0
Imax = 200mA
$Comp
L VCC #PWR049
U 1 1 5AFE2824
P 7200 3000
F 0 "#PWR049" H 7200 2850 50  0001 C CNN
F 1 "VCC" H 7200 3150 50  0000 C CNN
F 2 "" H 7200 3000 50  0001 C CNN
F 3 "" H 7200 3000 50  0001 C CNN
	1    7200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3000 7200 3100
Connection ~ 7200 3100
$EndSCHEMATC
