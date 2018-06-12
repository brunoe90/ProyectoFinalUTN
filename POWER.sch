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
Sheet 4 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1700 3850 0    60   UnSpc ~ 0
VCC
Text HLabel 4650 4050 2    60   UnSpc ~ 0
5V
Text HLabel 6450 3850 2    60   UnSpc ~ 0
3.3V
$Comp
L LM2575 LM?
U 1 1 5B21EFA9
P 2850 3950
F 0 "LM?" H 2850 3650 60  0000 C CNN
F 1 "LM2575" H 2850 4200 60  0000 C CNN
F 2 "" H 2750 3700 60  0001 C CNN
F 3 "" H 2750 3700 60  0001 C CNN
	1    2850 3950
	1    0    0    -1  
$EndComp
$Comp
L L L?
U 1 1 5B21F094
P 3900 4050
F 0 "L?" V 3850 4050 50  0000 C CNN
F 1 "330u" V 3975 4050 50  0000 C CNN
F 2 "" H 3900 4050 50  0001 C CNN
F 3 "" H 3900 4050 50  0001 C CNN
	1    3900 4050
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C?
U 1 1 5B21F0C5
P 4300 4200
F 0 "C?" H 4325 4300 50  0000 L CNN
F 1 "330u/16V" H 4325 4100 50  0000 L CNN
F 2 "" H 4300 4200 50  0001 C CNN
F 3 "" H 4300 4200 50  0001 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 5B21F0FB
P 1850 4100
F 0 "C?" H 1875 4200 50  0000 L CNN
F 1 "100u/50V" H 1875 4000 50  0000 L CNN
F 2 "" H 1850 4100 50  0001 C CNN
F 3 "" H 1850 4100 50  0001 C CNN
	1    1850 4100
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 5B21F38D
P 3600 4200
F 0 "D?" H 3600 4300 50  0000 C CNN
F 1 "1N5819" H 3600 4100 50  0000 C CNN
F 2 "" H 3600 4200 50  0001 C CNN
F 3 "" H 3600 4200 50  0001 C CNN
	1    3600 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 4050 3750 4050
Connection ~ 3600 4050
Wire Wire Line
	4050 4050 4650 4050
Connection ~ 4300 4050
Wire Wire Line
	3350 3850 5200 3850
Wire Wire Line
	4300 3850 4300 4050
Wire Wire Line
	1700 3850 2350 3850
Wire Wire Line
	1850 3950 1850 3850
Connection ~ 1850 3850
Wire Wire Line
	2350 3950 2350 4300
$Comp
L GND #PWR?
U 1 1 5B21FC54
P 2350 4300
F 0 "#PWR?" H 2350 4050 50  0001 C CNN
F 1 "GND" H 2350 4150 50  0000 C CNN
F 2 "" H 2350 4300 50  0001 C CNN
F 3 "" H 2350 4300 50  0001 C CNN
	1    2350 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B21FCFC
P 3950 4350
F 0 "#PWR?" H 3950 4100 50  0001 C CNN
F 1 "GND" H 3950 4200 50  0000 C CNN
F 2 "" H 3950 4350 50  0001 C CNN
F 3 "" H 3950 4350 50  0001 C CNN
	1    3950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4350 4300 4350
Connection ~ 3950 4350
Connection ~ 2350 4050
Wire Wire Line
	2350 4250 1850 4250
Connection ~ 2350 4250
$Comp
L LM3940 LM?
U 1 1 5B232AF5
P 5650 3900
F 0 "LM?" H 5750 3700 60  0000 C CNN
F 1 "LM3940" H 5650 4150 60  0000 C CNN
F 2 "" H 5650 3950 60  0001 C CNN
F 3 "" H 5650 3950 60  0001 C CNN
	1    5650 3900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5B232BE8
P 5000 4000
F 0 "C?" H 5025 4100 50  0000 L CNN
F 1 "0.47u" H 5025 3900 50  0000 L CNN
F 2 "" H 5038 3850 50  0001 C CNN
F 3 "" H 5000 4000 50  0001 C CNN
	1    5000 4000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5B232C46
P 6200 4000
F 0 "C?" H 6225 4100 50  0000 L CNN
F 1 "33u" H 6225 3900 50  0000 L CNN
F 2 "" H 6238 3850 50  0001 C CNN
F 3 "" H 6200 4000 50  0001 C CNN
	1    6200 4000
	1    0    0    -1  
$EndComp
Connection ~ 4300 3850
Connection ~ 5000 3850
Wire Wire Line
	6100 3850 6450 3850
Connection ~ 6200 3850
Wire Wire Line
	5000 4150 5000 4250
Wire Wire Line
	5000 4250 6200 4250
Wire Wire Line
	6200 4250 6200 4150
Connection ~ 5650 4250
$Comp
L GND #PWR?
U 1 1 5B232F5E
P 5650 4400
F 0 "#PWR?" H 5650 4150 50  0001 C CNN
F 1 "GND" H 5650 4250 50  0000 C CNN
F 2 "" H 5650 4400 50  0001 C CNN
F 3 "" H 5650 4400 50  0001 C CNN
	1    5650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4250 5650 4400
$EndSCHEMATC
