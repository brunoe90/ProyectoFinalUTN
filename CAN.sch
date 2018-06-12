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
LIBS:PF_APINER-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2400 2050 0    60   BiDi ~ 0
HS_CAN_TX
Text HLabel 2400 2250 0    60   BiDi ~ 0
HS_CAN_LO
Text HLabel 2350 3650 0    60   BiDi ~ 0
MS_CAN_HI
Text HLabel 2350 3850 0    60   BiDi ~ 0
MS_CAN_LO
Text HLabel 5950 3100 2    60   BiDi ~ 0
SW_CAN
Text HLabel 4700 1950 2    60   Output ~ 0
HS_CAN_TX_STN
Text HLabel 4700 2050 2    60   Input ~ 0
HS_CAN_RX_STN
Text HLabel 4750 3550 2    60   Output ~ 0
MS_CAN_TX_STN
Text HLabel 4750 3650 2    60   Input ~ 0
MS_CAN_RX_STN
Text HLabel 5950 2500 2    60   Output ~ 0
SW_CAN_TX_STN
Text HLabel 5950 2600 2    60   Output ~ 0
SW_CAN_RX_STN
Text HLabel 5950 2750 2    60   Output ~ 0
SW_CAN_MODE1
Text HLabel 5950 2850 2    60   Output ~ 0
SW_CAN_MODE0
Text HLabel 5950 2950 2    60   Output ~ 0
SW_CAN_LOAD
$Comp
L MCP2562-E/MF U?
U 1 1 5AFD0533
P 3350 2150
F 0 "U?" H 2950 2500 50  0000 L CNN
F 1 "MCP2562-E/MF" H 3450 2500 50  0000 L CNN
F 2 "Housings_DFN_QFN:DFN-8-1EP_3x3mm_Pitch0.65mm" H 3350 1650 50  0001 C CIN
F 3 "" H 3350 2150 50  0001 C CNN
	1    3350 2150
	-1   0    0    -1  
$EndComp
$Comp
L MCP2562-E/MF U?
U 1 1 5AFD05D8
P 3400 3750
F 0 "U?" H 3000 4100 50  0000 L CNN
F 1 "MCP2562-E/MF" H 3500 4100 50  0000 L CNN
F 2 "Housings_DFN_QFN:DFN-8-1EP_3x3mm_Pitch0.65mm" H 3400 3250 50  0001 C CIN
F 3 "" H 3400 3750 50  0001 C CNN
	1    3400 3750
	-1   0    0    -1  
$EndComp
Text HLabel 1700 2750 0    60   UnSpc ~ 0
5V
Text HLabel 1700 2850 0    60   UnSpc ~ 0
3.3V
$Comp
L +5V #PWR?
U 1 1 5AFD0678
P 1800 2700
F 0 "#PWR?" H 1800 2550 50  0001 C CNN
F 1 "+5V" H 1800 2840 50  0000 C CNN
F 2 "" H 1800 2700 50  0001 C CNN
F 3 "" H 1800 2700 50  0001 C CNN
	1    1800 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5AFD0692
P 2000 2850
F 0 "#PWR?" H 2000 2700 50  0001 C CNN
F 1 "+3.3V" H 2000 2990 50  0000 C CNN
F 2 "" H 2000 2850 50  0001 C CNN
F 3 "" H 2000 2850 50  0001 C CNN
	1    2000 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AFD06C6
P 3400 2650
F 0 "#PWR?" H 3400 2400 50  0001 C CNN
F 1 "GND" H 3400 2500 50  0000 C CNN
F 2 "" H 3400 2650 50  0001 C CNN
F 3 "" H 3400 2650 50  0001 C CNN
	1    3400 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AFD06DE
P 3450 4250
F 0 "#PWR?" H 3450 4000 50  0001 C CNN
F 1 "GND" H 3450 4100 50  0000 C CNN
F 2 "" H 3450 4250 50  0001 C CNN
F 3 "" H 3450 4250 50  0001 C CNN
	1    3450 4250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AFD0701
P 3350 1600
F 0 "#PWR?" H 3350 1450 50  0001 C CNN
F 1 "+5V" H 3350 1740 50  0000 C CNN
F 2 "" H 3350 1600 50  0001 C CNN
F 3 "" H 3350 1600 50  0001 C CNN
	1    3350 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AFD0712
P 3400 3200
F 0 "#PWR?" H 3400 3050 50  0001 C CNN
F 1 "+5V" H 3400 3340 50  0000 C CNN
F 2 "" H 3400 3200 50  0001 C CNN
F 3 "" H 3400 3200 50  0001 C CNN
	1    3400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2750 1800 2750
Wire Wire Line
	1800 2750 1800 2700
Wire Wire Line
	1700 2850 2000 2850
Wire Wire Line
	3350 2550 3450 2550
Wire Wire Line
	3400 2650 3400 2550
Connection ~ 3400 2550
Wire Wire Line
	3400 3200 3400 3350
Wire Wire Line
	3350 1600 3350 1750
Wire Wire Line
	3400 4150 3500 4150
Wire Wire Line
	3450 4250 3450 4150
Connection ~ 3450 4150
Wire Wire Line
	2400 2050 2850 2050
Wire Wire Line
	2400 2250 2850 2250
Wire Wire Line
	2350 3650 2900 3650
Wire Wire Line
	2350 3850 2900 3850
Wire Wire Line
	3850 1950 4700 1950
Wire Wire Line
	3850 2050 4700 2050
Wire Wire Line
	3900 3550 4750 3550
Wire Wire Line
	3900 3650 4750 3650
$Comp
L +3.3V #PWR?
U 1 1 5AFD09DE
P 4100 3850
F 0 "#PWR?" H 4100 3700 50  0001 C CNN
F 1 "+3.3V" H 4100 3990 50  0000 C CNN
F 2 "" H 4100 3850 50  0001 C CNN
F 3 "" H 4100 3850 50  0001 C CNN
	1    4100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3850 4100 3850
$Comp
L +3.3V #PWR?
U 1 1 5AFD0A66
P 4100 2250
F 0 "#PWR?" H 4100 2100 50  0001 C CNN
F 1 "+3.3V" H 4100 2390 50  0000 C CNN
F 2 "" H 4100 2250 50  0001 C CNN
F 3 "" H 4100 2250 50  0001 C CNN
	1    4100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2250 4100 2250
Text Notes 2950 2950 0    60   ~ 0
REVIZAR PIN 8 DATASHEET
$Comp
L R R?
U 1 1 5AFD0A96
P 4400 2350
F 0 "R?" V 4480 2350 50  0000 C CNN
F 1 "100" V 4400 2350 50  0000 C CNN
F 2 "" V 4330 2350 50  0001 C CNN
F 3 "" H 4400 2350 50  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AFD0AD6
P 4600 2350
F 0 "R?" V 4680 2350 50  0000 C CNN
F 1 "100" V 4600 2350 50  0000 C CNN
F 2 "" V 4530 2350 50  0001 C CNN
F 3 "" H 4600 2350 50  0001 C CNN
	1    4600 2350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AFD0B26
P 4400 4050
F 0 "R?" V 4480 4050 50  0000 C CNN
F 1 "100" V 4400 4050 50  0000 C CNN
F 2 "" V 4330 4050 50  0001 C CNN
F 3 "" H 4400 4050 50  0001 C CNN
	1    4400 4050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AFD0B52
P 4600 4050
F 0 "R?" V 4680 4050 50  0000 C CNN
F 1 "100" V 4600 4050 50  0000 C CNN
F 2 "" V 4530 4050 50  0001 C CNN
F 3 "" H 4600 4050 50  0001 C CNN
	1    4600 4050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5AFD0B74
P 4400 4450
F 0 "C?" H 4300 4550 50  0000 L CNN
F 1 "560p" H 4200 4350 50  0000 L CNN
F 2 "" H 4438 4300 50  0001 C CNN
F 3 "" H 4400 4450 50  0001 C CNN
	1    4400 4450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5AFD0BBE
P 4600 4450
F 0 "C?" H 4625 4550 50  0000 L CNN
F 1 "560p" H 4625 4350 50  0000 L CNN
F 2 "" H 4638 4300 50  0001 C CNN
F 3 "" H 4600 4450 50  0001 C CNN
	1    4600 4450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5AFD0BEE
P 4400 2750
F 0 "C?" H 4300 2850 50  0000 L CNN
F 1 "560p" H 4200 2650 50  0000 L CNN
F 2 "" H 4438 2600 50  0001 C CNN
F 3 "" H 4400 2750 50  0001 C CNN
	1    4400 2750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5AFD0C57
P 4600 2750
F 0 "C?" H 4625 2850 50  0000 L CNN
F 1 "560p" H 4625 2650 50  0000 L CNN
F 2 "" H 4638 2600 50  0001 C CNN
F 3 "" H 4600 2750 50  0001 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AFD0CF3
P 4500 4700
F 0 "#PWR?" H 4500 4450 50  0001 C CNN
F 1 "GND" H 4500 4550 50  0000 C CNN
F 2 "" H 4500 4700 50  0001 C CNN
F 3 "" H 4500 4700 50  0001 C CNN
	1    4500 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AFD0D44
P 4500 3000
F 0 "#PWR?" H 4500 2750 50  0001 C CNN
F 1 "GND" H 4500 2850 50  0000 C CNN
F 2 "" H 4500 3000 50  0001 C CNN
F 3 "" H 4500 3000 50  0001 C CNN
	1    4500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4400 3550
Connection ~ 4400 3550
Wire Wire Line
	4600 3900 4600 3650
Connection ~ 4600 3650
Wire Wire Line
	4400 4200 4400 4300
Wire Wire Line
	4600 4200 4600 4300
Wire Wire Line
	4400 4600 4400 4700
Wire Wire Line
	4400 4700 4600 4700
Wire Wire Line
	4600 4700 4600 4600
Connection ~ 4500 4700
Wire Wire Line
	4400 2500 4400 2600
Wire Wire Line
	4600 2500 4600 2600
Wire Wire Line
	4400 2900 4400 3000
Wire Wire Line
	4400 3000 4600 3000
Wire Wire Line
	4600 3000 4600 2900
Connection ~ 4500 3000
Wire Wire Line
	4400 2200 4400 1950
Connection ~ 4400 1950
Wire Wire Line
	4600 2200 4600 2050
Connection ~ 4600 2050
$Comp
L C C?
U 1 1 5AFD1564
P 3700 3250
F 0 "C?" H 3600 3350 50  0000 L CNN
F 1 "1u" V 3550 3200 50  0000 L CNN
F 2 "" H 3738 3100 50  0001 C CNN
F 3 "" H 3700 3250 50  0001 C CNN
	1    3700 3250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5AFD1622
P 3650 1650
F 0 "C?" H 3550 1750 50  0000 L CNN
F 1 "1u" V 3500 1550 50  0000 L CNN
F 2 "" H 3688 1500 50  0001 C CNN
F 3 "" H 3650 1650 50  0001 C CNN
	1    3650 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AFD172E
P 3950 1650
F 0 "#PWR?" H 3950 1400 50  0001 C CNN
F 1 "GND" H 3950 1500 50  0000 C CNN
F 2 "" H 3950 1650 50  0001 C CNN
F 3 "" H 3950 1650 50  0001 C CNN
	1    3950 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AFD175D
P 4000 3250
F 0 "#PWR?" H 4000 3000 50  0001 C CNN
F 1 "GND" H 4000 3100 50  0000 C CNN
F 2 "" H 4000 3250 50  0001 C CNN
F 3 "" H 4000 3250 50  0001 C CNN
	1    4000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3250 3400 3250
Connection ~ 3400 3250
Wire Wire Line
	3850 3250 4000 3250
Wire Wire Line
	3350 1650 3500 1650
Connection ~ 3350 1650
Wire Wire Line
	3800 1650 3950 1650
$EndSCHEMATC
