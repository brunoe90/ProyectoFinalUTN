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
Sheet 6 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5100 4150 2    60   BiDi ~ 0
L-LINE
Text HLabel 3550 4100 2    60   BiDi ~ 0
K-LINE
Text HLabel 2400 4400 0    60   Output ~ 0
ISO-K_TX
Text HLabel 4100 4400 0    60   Output ~ 0
ISO-L_TX
Text HLabel 4500 3000 2    60   Output ~ 0
ISO_RX
$Comp
L LM339 U1
U 4 1 5AFDF573
P 3800 3000
F 0 "U1" H 3800 3200 50  0000 L CNN
F 1 "LM339" H 3800 2800 50  0000 L CNN
F 2 "" H 3750 3100 50  0001 C CNN
F 3 "" H 3850 3200 50  0001 C CNN
	4    3800 3000
	1    0    0    -1  
$EndComp
Text HLabel 1500 2750 0    60   UnSpc ~ 0
VCC_SAFE
Text HLabel 1500 3050 0    60   UnSpc ~ 0
3.3V
$Comp
L +3.3V #PWR068
U 1 1 5AFE1ED7
P 1700 3050
F 0 "#PWR068" H 1700 2900 50  0001 C CNN
F 1 "+3.3V" H 1700 3190 50  0000 C CNN
F 2 "" H 1700 3050 50  0001 C CNN
F 3 "" H 1700 3050 50  0001 C CNN
	1    1700 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR069
U 1 1 5AFE33AD
P 1700 2750
F 0 "#PWR069" H 1700 2600 50  0001 C CNN
F 1 "VCC" H 1700 2900 50  0000 C CNN
F 2 "" H 1700 2750 50  0001 C CNN
F 3 "" H 1700 2750 50  0001 C CNN
	1    1700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2750 1700 2750
Wire Wire Line
	1500 3050 1700 3050
$Comp
L VCC #PWR070
U 1 1 5AFE33DE
P 2450 2400
F 0 "#PWR070" H 2450 2250 50  0001 C CNN
F 1 "VCC" H 2450 2550 50  0000 C CNN
F 2 "" H 2450 2400 50  0001 C CNN
F 3 "" H 2450 2400 50  0001 C CNN
	1    2450 2400
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 5AFE33ED
P 2450 2650
F 0 "R22" V 2530 2650 50  0000 C CNN
F 1 "10K" V 2450 2650 50  0000 C CNN
F 2 "" V 2380 2650 50  0001 C CNN
F 3 "" H 2450 2650 50  0001 C CNN
	1    2450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2900 2450 2900
Wire Wire Line
	2450 2800 2450 2950
Connection ~ 2450 2900
Wire Wire Line
	2450 2500 2450 2400
$Comp
L GND #PWR071
U 1 1 5AFE3695
P 2450 3400
F 0 "#PWR071" H 2450 3150 50  0001 C CNN
F 1 "GND" H 2450 3250 50  0000 C CNN
F 2 "" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0001 C CNN
	1    2450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3250 2450 3400
Wire Wire Line
	3000 3100 3100 3100
Wire Wire Line
	3400 3100 3500 3100
Wire Wire Line
	4100 3000 4500 3000
$Comp
L Q_NPN_BCE Q5
U 1 1 5AFE3753
P 3150 4400
F 0 "Q5" H 3350 4450 50  0000 L CNN
F 1 "3904" H 3350 4350 50  0000 L CNN
F 2 "" H 3350 4500 50  0001 C CNN
F 3 "" H 3150 4400 50  0001 C CNN
	1    3150 4400
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q6
U 1 1 5AFE3820
P 4750 4400
F 0 "Q6" H 4950 4450 50  0000 L CNN
F 1 "3904" H 4950 4350 50  0000 L CNN
F 2 "" H 4950 4500 50  0001 C CNN
F 3 "" H 4750 4400 50  0001 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
Text HLabel 3000 3100 0    60   BiDi ~ 0
K-LINE
$Comp
L R R24
U 1 1 5AFE407A
P 2700 4400
F 0 "R24" V 2780 4400 50  0000 C CNN
F 1 "1K" V 2700 4400 50  0000 C CNN
F 2 "" V 2630 4400 50  0001 C CNN
F 3 "" H 2700 4400 50  0001 C CNN
	1    2700 4400
	0    1    1    0   
$EndComp
$Comp
L R R26
U 1 1 5AFE4255
P 3250 3900
F 0 "R26" V 3330 3900 50  0000 C CNN
F 1 "510->0.5W" V 3150 3850 50  0000 C CNN
F 2 "" V 3180 3900 50  0001 C CNN
F 3 "" H 3250 3900 50  0001 C CNN
	1    3250 3900
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR072
U 1 1 5AFE434B
P 3250 3650
F 0 "#PWR072" H 3250 3500 50  0001 C CNN
F 1 "VCC" H 3250 3800 50  0000 C CNN
F 2 "" H 3250 3650 50  0001 C CNN
F 3 "" H 3250 3650 50  0001 C CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR073
U 1 1 5AFE4510
P 3250 4700
F 0 "#PWR073" H 3250 4450 50  0001 C CNN
F 1 "GND" H 3250 4550 50  0000 C CNN
F 2 "" H 3250 4700 50  0001 C CNN
F 3 "" H 3250 4700 50  0001 C CNN
	1    3250 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 5AFE4533
P 4850 4700
F 0 "#PWR074" H 4850 4450 50  0001 C CNN
F 1 "GND" H 4850 4550 50  0000 C CNN
F 2 "" H 4850 4700 50  0001 C CNN
F 3 "" H 4850 4700 50  0001 C CNN
	1    4850 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR075
U 1 1 5AFE46CA
P 4850 3700
F 0 "#PWR075" H 4850 3550 50  0001 C CNN
F 1 "VCC" H 4850 3850 50  0000 C CNN
F 2 "" H 4850 3700 50  0001 C CNN
F 3 "" H 4850 3700 50  0001 C CNN
	1    4850 3700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR076
U 1 1 5AFE4B8F
P 4300 2500
F 0 "#PWR076" H 4300 2350 50  0001 C CNN
F 1 "+3.3V" H 4300 2640 50  0000 C CNN
F 2 "" H 4300 2500 50  0001 C CNN
F 3 "" H 4300 2500 50  0001 C CNN
	1    4300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2900 4300 3000
Connection ~ 4300 3000
Wire Wire Line
	4300 2500 4300 2600
Wire Wire Line
	3250 3650 3250 3750
Wire Wire Line
	3250 4050 3250 4200
Wire Wire Line
	2950 4400 2850 4400
Wire Wire Line
	2550 4400 2400 4400
Wire Wire Line
	3250 4600 3250 4700
Wire Wire Line
	4850 3700 4850 3800
Wire Wire Line
	3550 4100 3250 4100
Connection ~ 3250 4100
Wire Wire Line
	4850 4600 4850 4700
Wire Wire Line
	4850 4200 4850 4100
Wire Wire Line
	4850 4150 5100 4150
Connection ~ 4850 4150
Text Notes 3400 3800 0    60   ~ 0
OJO CON EÑ Nº DE PINES
Text Notes 3500 4700 0    60   ~ 0
EL ARDU USABA OTRO NPN
Text Notes 1700 4100 0    60   ~ 0
ALIM OPAMP? -> 5v?
$Comp
L R R23
U 1 1 5AFC56E8
P 2450 3100
F 0 "R23" V 2530 3100 50  0000 C CNN
F 1 "10K" V 2450 3100 50  0000 C CNN
F 2 "" V 2380 3100 50  0001 C CNN
F 3 "" H 2450 3100 50  0001 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 5AFC572C
P 3250 3100
F 0 "R25" V 3330 3100 50  0000 C CNN
F 1 "10K" V 3250 3100 50  0000 C CNN
F 2 "" V 3180 3100 50  0001 C CNN
F 3 "" H 3250 3100 50  0001 C CNN
	1    3250 3100
	0    1    1    0   
$EndComp
$Comp
L R R27
U 1 1 5AFC5779
P 4300 2750
F 0 "R27" V 4380 2750 50  0000 C CNN
F 1 "10K" V 4300 2750 50  0000 C CNN
F 2 "" V 4230 2750 50  0001 C CNN
F 3 "" H 4300 2750 50  0001 C CNN
	1    4300 2750
	-1   0    0    1   
$EndComp
$Comp
L R R29
U 1 1 5AFC594D
P 4850 3950
F 0 "R29" V 4930 3950 50  0000 C CNN
F 1 "510->0.5W" V 4750 3900 50  0000 C CNN
F 2 "" V 4780 3950 50  0001 C CNN
F 3 "" H 4850 3950 50  0001 C CNN
	1    4850 3950
	-1   0    0    1   
$EndComp
$Comp
L R R28
U 1 1 5AFC59B5
P 4400 4400
F 0 "R28" V 4480 4400 50  0000 C CNN
F 1 "1K" V 4400 4400 50  0000 C CNN
F 2 "" V 4330 4400 50  0001 C CNN
F 3 "" H 4400 4400 50  0001 C CNN
	1    4400 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4400 4250 4400
$Comp
L VCC #PWR077
U 1 1 5B2BCFD5
P 3700 2600
F 0 "#PWR077" H 3700 2450 50  0001 C CNN
F 1 "VCC" H 3700 2750 50  0000 C CNN
F 2 "" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0001 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR078
U 1 1 5B2BD001
P 3700 3400
F 0 "#PWR078" H 3700 3150 50  0001 C CNN
F 1 "GND" H 3700 3250 50  0000 C CNN
F 2 "" H 3700 3400 50  0001 C CNN
F 3 "" H 3700 3400 50  0001 C CNN
	1    3700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2700 3700 2600
Wire Wire Line
	3700 3300 3700 3400
$EndSCHEMATC
