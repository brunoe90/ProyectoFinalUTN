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
Sheet 2 8
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
L LM339 U1
U 2 1 5AFDFA5D
P 4600 4550
F 0 "U1" H 4600 4750 50  0000 L CNN
F 1 "LM339" H 4600 4350 50  0000 L CNN
F 2 "" H 4550 4650 50  0001 C CNN
F 3 "" H 4650 4750 50  0001 C CNN
	2    4600 4550
	1    0    0    -1  
$EndComp
$Comp
L LM339 U1
U 3 1 5AFDFA93
P 4600 5750
F 0 "U1" H 4600 5950 50  0000 L CNN
F 1 "LM339" H 4600 5550 50  0000 L CNN
F 2 "" H 4550 5850 50  0001 C CNN
F 3 "" H 4650 5950 50  0001 C CNN
	3    4600 5750
	1    0    0    -1  
$EndComp
$Comp
L LM339 U1
U 1 1 5AFDFAB8
P 1700 1800
F 0 "U1" H 1700 2000 50  0000 L CNN
F 1 "LM339" H 1700 1600 50  0000 L CNN
F 2 "" H 1650 1900 50  0001 C CNN
F 3 "" H 1750 2000 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Text HLabel 3400 4450 0    60   BiDi ~ 0
J1850_BUS+
Text HLabel 3400 4650 0    60   BiDi ~ 0
J1850_BUS-
Text HLabel 5350 5750 2    60   Output ~ 0
VPW_RX
Text HLabel 5350 4550 2    60   Output ~ 0
PWM_RX
Text HLabel 7200 2200 0    60   Input ~ 0
J1850_BUS+_TX
Text HLabel 4250 2300 0    60   Input ~ 0
J1850_BUS+_VH
Text HLabel 6900 5050 0    60   Input ~ 0
J1850_BUS-_TX
Text HLabel 3050 1150 0    60   UnSpc ~ 0
VCC_SAFE
$Comp
L R R5
U 1 1 5AFCC3CE
P 3850 4450
F 0 "R5" V 3930 4450 50  0000 C CNN
F 1 "10K" V 3850 4450 50  0000 C CNN
F 2 "" V 3780 4450 50  0001 C CNN
F 3 "" H 3850 4450 50  0001 C CNN
	1    3850 4450
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AFCC450
P 3850 4650
F 0 "R6" V 3930 4650 50  0000 C CNN
F 1 "10K" V 3850 4650 50  0000 C CNN
F 2 "" V 3780 4650 50  0001 C CNN
F 3 "" H 3850 4650 50  0001 C CNN
	1    3850 4650
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5AFCC473
P 5100 4300
F 0 "R10" V 5180 4300 50  0000 C CNN
F 1 "10K" V 5100 4300 50  0000 C CNN
F 2 "" V 5030 4300 50  0001 C CNN
F 3 "" H 5100 4300 50  0001 C CNN
	1    5100 4300
	-1   0    0    1   
$EndComp
Text HLabel 3050 1600 0    60   UnSpc ~ 0
3.3V
$Comp
L +3.3V #PWR023
U 1 1 5AFCC638
P 3250 1600
F 0 "#PWR023" H 3250 1450 50  0001 C CNN
F 1 "+3.3V" H 3250 1740 50  0000 C CNN
F 2 "" H 3250 1600 50  0001 C CNN
F 3 "" H 3250 1600 50  0001 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR024
U 1 1 5AFCC6B8
P 3250 1150
F 0 "#PWR024" H 3250 1000 50  0001 C CNN
F 1 "VCC" H 3250 1300 50  0000 C CNN
F 2 "" H 3250 1150 50  0001 C CNN
F 3 "" H 3250 1150 50  0001 C CNN
	1    3250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1150 3250 1150
Wire Wire Line
	3400 4450 3700 4450
Wire Wire Line
	4000 4450 4300 4450
Wire Wire Line
	3400 4650 3700 4650
Wire Wire Line
	4000 4650 4300 4650
Wire Wire Line
	4900 4550 5350 4550
Wire Wire Line
	5100 4450 5100 4550
Connection ~ 5100 4550
$Comp
L +3.3V #PWR025
U 1 1 5AFCC907
P 5100 4050
F 0 "#PWR025" H 5100 3900 50  0001 C CNN
F 1 "+3.3V" H 5100 4190 50  0000 C CNN
F 2 "" H 5100 4050 50  0001 C CNN
F 3 "" H 5100 4050 50  0001 C CNN
	1    5100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4050 5100 4150
Text HLabel 3050 1350 0    60   UnSpc ~ 0
5V
$Comp
L +5V #PWR026
U 1 1 5AFCCA16
P 3250 1350
F 0 "#PWR026" H 3250 1200 50  0001 C CNN
F 1 "+5V" H 3250 1490 50  0000 C CNN
F 2 "" H 3250 1350 50  0001 C CNN
F 3 "" H 3250 1350 50  0001 C CNN
	1    3250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1350 3250 1350
Wire Wire Line
	3050 1600 3250 1600
Text Notes 850  1400 0    60   ~ 0
OPAMP DE MAS, \nCAMBIAR CON OTROS \nPARA VER COMO QUEDA MEJOR EL PCB
Text HLabel 3650 5650 0    60   BiDi ~ 0
J1850_BUS+
$Comp
L R R7
U 1 1 5AFCD1AA
P 4000 5650
F 0 "R7" V 4080 5650 50  0000 C CNN
F 1 "10K" V 4000 5650 50  0000 C CNN
F 2 "" V 3930 5650 50  0001 C CNN
F 3 "" H 4000 5650 50  0001 C CNN
	1    4000 5650
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5AFCD2B6
P 3400 6050
F 0 "R4" V 3480 6050 50  0000 C CNN
F 1 "10K" V 3400 6050 50  0000 C CNN
F 2 "" V 3330 6050 50  0001 C CNN
F 3 "" H 3400 6050 50  0001 C CNN
	1    3400 6050
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5AFCD338
P 3400 5450
F 0 "R3" V 3480 5450 50  0000 C CNN
F 1 "2.7K" V 3400 5450 50  0000 C CNN
F 2 "" V 3330 5450 50  0001 C CNN
F 3 "" H 3400 5450 50  0001 C CNN
	1    3400 5450
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 5AFCD422
P 5100 5500
F 0 "R11" V 5180 5500 50  0000 C CNN
F 1 "10K" V 5100 5500 50  0000 C CNN
F 2 "" V 5030 5500 50  0001 C CNN
F 3 "" H 5100 5500 50  0001 C CNN
	1    5100 5500
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR027
U 1 1 5AFCDAF6
P 3400 5150
F 0 "#PWR027" H 3400 5000 50  0001 C CNN
F 1 "+5V" H 3400 5290 50  0000 C CNN
F 2 "" H 3400 5150 50  0001 C CNN
F 3 "" H 3400 5150 50  0001 C CNN
	1    3400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5150 3400 5300
Wire Wire Line
	3400 5600 3400 5900
Wire Wire Line
	4300 5850 3400 5850
Connection ~ 3400 5850
$Comp
L GND #PWR028
U 1 1 5AFCDC50
P 4500 6150
F 0 "#PWR028" H 4500 5900 50  0001 C CNN
F 1 "GND" H 4500 6000 50  0000 C CNN
F 2 "" H 4500 6150 50  0001 C CNN
F 3 "" H 4500 6150 50  0001 C CNN
	1    4500 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5AFCDC80
P 4500 4950
F 0 "#PWR029" H 4500 4700 50  0001 C CNN
F 1 "GND" H 4500 4800 50  0000 C CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "" H 4500 4950 50  0001 C CNN
	1    4500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4850 4500 4950
Wire Wire Line
	4500 6050 4500 6150
Wire Wire Line
	4900 5750 5350 5750
Wire Wire Line
	5100 5650 5100 5750
Connection ~ 5100 5750
$Comp
L +3.3V #PWR030
U 1 1 5AFCE122
P 5100 5250
F 0 "#PWR030" H 5100 5100 50  0001 C CNN
F 1 "+3.3V" H 5100 5390 50  0000 C CNN
F 2 "" H 5100 5250 50  0001 C CNN
F 3 "" H 5100 5250 50  0001 C CNN
	1    5100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5250 5100 5350
Wire Wire Line
	3650 5650 3850 5650
Wire Wire Line
	4150 5650 4300 5650
$Comp
L GND #PWR031
U 1 1 5AFCE23A
P 3400 6200
F 0 "#PWR031" H 3400 5950 50  0001 C CNN
F 1 "GND" H 3400 6050 50  0000 C CNN
F 2 "" H 3400 6200 50  0001 C CNN
F 3 "" H 3400 6200 50  0001 C CNN
	1    3400 6200
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q2
U 1 1 5AFCEA62
P 7750 2150
AR Path="/5AFCEA62" Ref="Q2"  Part="1" 
AR Path="/5AFB6308/5AFCEA62" Ref="Q2"  Part="1" 
F 0 "Q2" H 7950 2225 50  0000 L CNN
F 1 "2N7002" H 7950 2150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7950 2075 50  0001 L CIN
F 3 "" H 7750 2150 50  0001 L CNN
	1    7750 2150
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5AFD0132
P 7400 2500
F 0 "R14" H 7480 2500 50  0000 C CNN
F 1 "10K" V 7400 2500 50  0000 C CNN
F 2 "" V 7330 2500 50  0001 C CNN
F 3 "" H 7400 2500 50  0001 C CNN
	1    7400 2500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR032
U 1 1 5AFD023A
P 7850 2800
F 0 "#PWR032" H 7850 2550 50  0001 C CNN
F 1 "GND" H 7850 2650 50  0000 C CNN
F 2 "" H 7850 2800 50  0001 C CNN
F 3 "" H 7850 2800 50  0001 C CNN
	1    7850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2200 7550 2200
Wire Wire Line
	7400 2200 7400 2350
Connection ~ 7400 2200
Wire Wire Line
	7850 2350 7850 2800
Wire Wire Line
	7400 2650 7400 2750
Wire Wire Line
	7400 2750 7850 2750
Connection ~ 7850 2750
$Comp
L R R15
U 1 1 5AFD04F2
P 7850 1650
F 0 "R15" H 7930 1650 50  0000 C CNN
F 1 "10K" V 7850 1650 50  0000 C CNN
F 2 "" V 7780 1650 50  0001 C CNN
F 3 "" H 7850 1650 50  0001 C CNN
	1    7850 1650
	-1   0    0    1   
$EndComp
$Comp
L LM317L L1
U 1 1 5AFD1C21
P 5450 1350
F 0 "L1" H 5450 1050 60  0000 C CNN
F 1 "LM317L" H 5450 1650 60  0000 C CNN
F 2 "" H 5400 1150 60  0001 C CNN
F 3 "" H 5400 1150 60  0001 C CNN
	1    5450 1350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR033
U 1 1 5AFD253B
P 4850 1200
F 0 "#PWR033" H 4850 1050 50  0001 C CNN
F 1 "VCC" H 4850 1350 50  0000 C CNN
F 2 "" H 4850 1200 50  0001 C CNN
F 3 "" H 4850 1200 50  0001 C CNN
	1    4850 1200
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5AFD27C6
P 4800 1450
F 0 "R8" V 4880 1450 50  0000 C CNN
F 1 "240" V 4800 1450 50  0000 C CNN
F 2 "" V 4730 1450 50  0001 C CNN
F 3 "" H 4800 1450 50  0001 C CNN
	1    4800 1450
	-1   0    0    1   
$EndComp
NoConn ~ 5000 1400
NoConn ~ 5900 1300
NoConn ~ 5900 1400
$Comp
L C C1
U 1 1 5AFD2B38
P 4050 1300
F 0 "C1" H 4075 1400 50  0000 L CNN
F 1 "0.1u" H 4075 1200 50  0000 L CNN
F 2 "" H 4088 1150 50  0001 C CNN
F 3 "" H 4050 1300 50  0001 C CNN
	1    4050 1300
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AFD2C3B
P 4500 1450
F 0 "C2" H 4525 1550 50  0000 L CNN
F 1 "1u" H 4525 1350 50  0000 L CNN
F 2 "" H 4538 1300 50  0001 C CNN
F 3 "" H 4500 1450 50  0001 C CNN
	1    4500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1200 4850 1200
$Comp
L VCC #PWR034
U 1 1 5AFD2DAB
P 4050 1100
F 0 "#PWR034" H 4050 950 50  0001 C CNN
F 1 "VCC" H 4050 1250 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5AFD2DDE
P 4050 1600
F 0 "#PWR035" H 4050 1350 50  0001 C CNN
F 1 "GND" H 4050 1450 50  0000 C CNN
F 2 "" H 4050 1600 50  0001 C CNN
F 3 "" H 4050 1600 50  0001 C CNN
	1    4050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1100 4050 1150
Wire Wire Line
	4050 1450 4050 1600
Wire Wire Line
	4500 1300 5000 1300
Connection ~ 4800 1300
$Comp
L GND #PWR036
U 1 1 5AFD2F00
P 4500 1600
F 0 "#PWR036" H 4500 1350 50  0001 C CNN
F 1 "GND" H 4500 1450 50  0000 C CNN
F 2 "" H 4500 1600 50  0001 C CNN
F 3 "" H 4500 1600 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
Text Notes 4850 900  0    60   ~ 0
CAMBIAR VOUT PARA \nVER CUAL ES MAS COMODO\nEN EL PCB
Text Label 4500 1300 0    60   ~ 0
V_J1850
Wire Wire Line
	5000 1600 5000 1500
Wire Wire Line
	4800 1600 5000 1600
$Comp
L R R9
U 1 1 5AFD31BD
P 4950 1800
F 0 "R9" V 5030 1800 50  0000 C CNN
F 1 "866" V 4950 1800 50  0000 C CNN
F 2 "" V 4880 1800 50  0001 C CNN
F 3 "" H 4950 1800 50  0001 C CNN
	1    4950 1800
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5AFD38D6
P 5200 2300
F 0 "R12" V 5280 2300 50  0000 C CNN
F 1 "374" V 5200 2300 50  0000 C CNN
F 2 "" V 5130 2300 50  0001 C CNN
F 3 "" H 5200 2300 50  0001 C CNN
	1    5200 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 1650 4950 1600
Connection ~ 4950 1600
Wire Wire Line
	4650 2050 5200 2050
Wire Wire Line
	5200 2050 5200 2150
Wire Wire Line
	4650 2500 4650 2600
Wire Wire Line
	4650 2600 5200 2600
Wire Wire Line
	5200 2600 5200 2450
$Comp
L GND #PWR037
U 1 1 5AFD3BD6
P 4900 2700
F 0 "#PWR037" H 4900 2450 50  0001 C CNN
F 1 "GND" H 4900 2550 50  0000 C CNN
F 2 "" H 4900 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2700 4900 2600
Connection ~ 4900 2600
Text Notes 3700 850  0    60   ~ 0
CAP CERCA DE LM
Wire Wire Line
	4650 2100 4650 2050
Wire Wire Line
	4950 1950 4950 2050
Connection ~ 4950 2050
Text Notes 8000 2450 0    60   ~ 0
EL ARDU USA \nBSS138
Wire Wire Line
	7850 1800 7850 1950
Text Label 7850 1250 0    60   ~ 0
V_J1850
Wire Wire Line
	7850 1250 7850 1500
Wire Wire Line
	7850 1450 8150 1450
Connection ~ 7850 1450
Wire Wire Line
	8350 1750 8350 1900
Wire Wire Line
	8350 1900 7850 1900
Connection ~ 7850 1900
$Comp
L D_Schottky D4
U 1 1 5AFD6FCB
P 9000 1450
F 0 "D4" H 9000 1550 50  0000 C CNN
F 1 "BAT46" H 9000 1350 50  0000 C CNN
F 2 "" H 9000 1450 50  0001 C CNN
F 3 "" H 9000 1450 50  0001 C CNN
	1    9000 1450
	-1   0    0    1   
$EndComp
$Comp
L R R17
U 1 1 5AFD717F
P 9350 1650
F 0 "R17" H 9430 1650 50  0000 C CNN
F 1 "10K" V 9350 1650 50  0000 C CNN
F 2 "" V 9280 1650 50  0001 C CNN
F 3 "" H 9350 1650 50  0001 C CNN
	1    9350 1650
	-1   0    0    1   
$EndComp
$Comp
L D_Schottky D5
U 1 1 5AFD7207
P 9350 2100
F 0 "D5" V 9350 2200 50  0000 C CNN
F 1 "BAT46" V 9350 1900 50  0000 C CNN
F 2 "" H 9350 2100 50  0001 C CNN
F 3 "" H 9350 2100 50  0001 C CNN
	1    9350 2100
	0    -1   -1   0   
$EndComp
Text Notes 8400 1950 0    60   ~ 0
OJO CON EL \nNUMERO DE PINES\n(MOS)
Text HLabel 9650 1450 2    60   BiDi ~ 0
J1850_BUS+
Wire Wire Line
	8550 1450 8850 1450
Wire Wire Line
	9150 1450 9650 1450
Wire Wire Line
	9350 1500 9350 1450
Connection ~ 9350 1450
$Comp
L GND #PWR038
U 1 1 5AFD7C1B
P 9350 2350
F 0 "#PWR038" H 9350 2100 50  0001 C CNN
F 1 "GND" H 9350 2200 50  0000 C CNN
F 2 "" H 9350 2350 50  0001 C CNN
F 3 "" H 9350 2350 50  0001 C CNN
	1    9350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1800 9350 1950
Wire Wire Line
	9350 2250 9350 2350
Text Notes 8400 1200 0    60   ~ 0
EL ARDU USA\nZXMP6A13FTA\n(MOS)
Text Notes 9500 1950 0    60   ~ 0
EL ARDU USA\nBAS16 (SCHOT)
$Comp
L R R13
U 1 1 5AFDBB68
P 7300 5050
F 0 "R13" H 7380 5050 50  0000 C CNN
F 1 "1K" V 7300 5050 50  0000 C CNN
F 2 "" V 7230 5050 50  0001 C CNN
F 3 "" H 7300 5050 50  0001 C CNN
	1    7300 5050
	0    -1   -1   0   
$EndComp
$Comp
L MMBT3904 Q3
U 1 1 5AFDBE48
P 7900 5050
F 0 "Q3" H 8100 5125 50  0000 L CNN
F 1 "3904" H 8100 5050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8100 4975 50  0001 L CIN
F 3 "" H 7900 5050 50  0001 L CNN
	1    7900 5050
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5AFDC4C1
P 8000 4500
F 0 "R16" H 8080 4500 50  0000 C CNN
F 1 "10K" V 8000 4500 50  0000 C CNN
F 2 "" V 7930 4500 50  0001 C CNN
F 3 "" H 8000 4500 50  0001 C CNN
	1    8000 4500
	-1   0    0    1   
$EndComp
$Comp
L D_Schottky D3
U 1 1 5AFDCA3D
P 8000 4050
F 0 "D3" V 8000 4150 50  0000 C CNN
F 1 "BAT46" V 8000 3850 50  0000 C CNN
F 2 "" H 8000 4050 50  0001 C CNN
F 3 "" H 8000 4050 50  0001 C CNN
	1    8000 4050
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR039
U 1 1 5AFDD1E3
P 8000 3800
F 0 "#PWR039" H 8000 3650 50  0001 C CNN
F 1 "+5V" H 8000 3940 50  0000 C CNN
F 2 "" H 8000 3800 50  0001 C CNN
F 3 "" H 8000 3800 50  0001 C CNN
	1    8000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5050 7150 5050
Wire Wire Line
	7450 5050 7700 5050
Wire Wire Line
	8000 4650 8000 4850
Wire Wire Line
	8000 4350 8000 4200
Wire Wire Line
	8000 3800 8000 3900
$Comp
L GND #PWR040
U 1 1 5AFDD7DF
P 8000 5450
F 0 "#PWR040" H 8000 5200 50  0001 C CNN
F 1 "GND" H 8000 5300 50  0000 C CNN
F 2 "" H 8000 5450 50  0001 C CNN
F 3 "" H 8000 5450 50  0001 C CNN
	1    8000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5250 8000 5450
Text HLabel 8350 4750 2    60   BiDi ~ 0
J1850_BUS-
Wire Wire Line
	8350 4750 8000 4750
Connection ~ 8000 4750
Text Notes 6900 4800 0    60   ~ 0
OJO CON EL \nNUMERO DE PINES\n(NPN)
Text Notes 8450 5200 0    60   ~ 0
EL ARDU USA \nMBT2222
NoConn ~ 2000 1800
NoConn ~ 1600 1500
NoConn ~ 1400 1700
NoConn ~ 1400 1900
NoConn ~ 1600 2100
Wire Wire Line
	4500 4150 4500 4250
Wire Wire Line
	4500 5350 4500 5450
Wire Wire Line
	4250 2300 4350 2300
$Comp
L 2N7002 Q1
U 1 1 5AFD20A7
P 4550 2300
AR Path="/5AFD20A7" Ref="Q1"  Part="1" 
AR Path="/5AFB6308/5AFD20A7" Ref="Q1"  Part="1" 
F 0 "Q1" H 4750 2375 50  0000 L CNN
F 1 "2N7002" H 4500 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4750 2225 50  0001 L CIN
F 3 "" H 4550 2300 50  0001 L CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2200 7550 2150
$Comp
L Q_PMOS_SGD Q4
U 1 1 5B2CE066
P 8350 1550
F 0 "Q4" H 8550 1600 50  0000 L CNN
F 1 "RSU002P03" H 8550 1500 50  0000 L CNN
F 2 "" H 8550 1650 50  0001 C CNN
F 3 "" H 8350 1550 50  0001 C CNN
	1    8350 1550
	0    1    -1   0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B30334A
P 4500 4150
F 0 "#PWR?" H 4500 4000 50  0001 C CNN
F 1 "VCC" H 4500 4300 50  0000 C CNN
F 2 "" H 4500 4150 50  0001 C CNN
F 3 "" H 4500 4150 50  0001 C CNN
	1    4500 4150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B3043A1
P 4500 5350
F 0 "#PWR?" H 4500 5200 50  0001 C CNN
F 1 "VCC" H 4500 5500 50  0000 C CNN
F 2 "" H 4500 5350 50  0001 C CNN
F 3 "" H 4500 5350 50  0001 C CNN
	1    4500 5350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
