EESchema Schematic File Version 2
LIBS:Connector
LIBS:ESP32-footprints-Shem-Lib
LIBS:ftdi
LIBS:OBDII_IoT
LIBS:STN2120
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L DLC_RAW #PWR040
U 1 1 582F295A
P 5150 3350
F 0 "#PWR040" H 5150 3440 20  0001 C CNN
F 1 "DLC_RAW" H 5150 3440 30  0000 C CNN
F 2 "" H 5150 3350 60  0000 C CNN
F 3 "" H 5150 3350 60  0000 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 582F3539
P 5150 3650
F 0 "R5" V 5230 3650 50  0000 C CNN
F 1 "62k 1%" V 5050 3650 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 5080 3650 50  0001 C CNN
F 3 "" H 5150 3650 50  0000 C CNN
F 4 "RES SMD 62K OHM 1% 1/16W 0402" H 5150 3650 60  0001 C CNN "Desc"
F 5 "Yageo" H 5150 3650 60  0001 C CNN "Manf"
F 6 "RC0402FR-0762KL" H 5150 3650 60  0001 C CNN "Manf#"
F 7 "311-62.0KLRCT-ND" H 5150 3650 60  0001 C CNN "Digikey#"
	1    5150 3650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR041
U 1 1 582F35F0
P 5150 4450
F 0 "#PWR041" H 5150 4200 50  0001 C CNN
F 1 "GND" H 5150 4300 50  0001 C CNN
F 2 "" H 5150 4450 50  0000 C CNN
F 3 "" H 5150 4450 50  0000 C CNN
	1    5150 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 582F3A7C
P 5650 4450
F 0 "#PWR042" H 5650 4200 50  0001 C CNN
F 1 "GND" H 5650 4300 50  0001 C CNN
F 2 "" H 5650 4450 50  0000 C CNN
F 3 "" H 5650 4450 50  0000 C CNN
	1    5650 4450
	1    0    0    -1  
$EndComp
Text HLabel 5550 3100 2    40   Output ~ 0
ANALOG_IN
Wire Wire Line
	5150 3500 5150 3350
Wire Wire Line
	5150 4300 5150 4450
Wire Wire Line
	5150 3800 5150 4000
Wire Wire Line
	5150 4400 4850 4400
Wire Wire Line
	4850 4400 4850 4300
Connection ~ 5150 4400
Wire Wire Line
	4850 3900 4850 4000
Connection ~ 5150 3900
Wire Wire Line
	5650 4200 5650 4450
$Comp
L D_Schottky_BAT54SL D3
U 1 1 583A9D5F
P 5650 3900
F 0 "D3" H 5800 3800 50  0000 C CNN
F 1 "BAT54SL" H 5650 4000 50  0000 C CNN
F 2 "to-sod-sot:SOT-23" H 5650 3900 50  0001 C CNN
F 3 "" H 5650 3900 50  0000 C CNN
F 4 "Diode Array 1 Pair Series Connection Schottky 30V 200mA (DC) Surface Mount TO-236-3, SC-59, SOT-23-3" H 5650 3900 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 5650 3900 60  0001 C CNN "Manf"
F 6 "BAT54SLT1G" H 5650 3900 60  0001 C CNN "Manf#"
F 7 "BAT54SLT1GOSCT-ND" H 5650 3900 60  0001 C CNN "Digikey#"
	1    5650 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	4850 3900 5450 3900
Wire Wire Line
	5550 3100 5350 3100
Wire Wire Line
	5350 3100 5350 3900
Connection ~ 5350 3900
$Comp
L R R6
U 1 1 583AB1A6
P 5150 4150
F 0 "R6" V 5050 4150 50  0000 C CNN
F 1 "10K 1%" V 5250 4150 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 5080 4150 50  0001 C CNN
F 3 "" H 5150 4150 50  0000 C CNN
F 4 "RES SMD 10K OHM 1% 1/16W 0402" H 5150 4150 60  0001 C CNN "Desc"
F 5 "Yaego" H 5150 4150 60  0001 C CNN "Manf"
F 6 "RC0402FR-0710KL" H 5150 4150 60  0001 C CNN "Manf#"
F 7 "311-10.0KLRCT-ND" H 5150 4150 60  0001 C CNN "Digikey#"
	1    5150 4150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG043
U 1 1 58498D94
P 4900 3350
F 0 "#FLG043" H 4900 3445 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 3530 40  0000 C CNN
F 2 "" H 4900 3350 50  0000 C CNN
F 3 "" H 4900 3350 50  0000 C CNN
	1    4900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3350 4900 3400
Wire Wire Line
	4900 3400 5150 3400
Connection ~ 5150 3400
$Comp
L C C12
U 1 1 58F8BB88
P 4850 4150
F 0 "C12" V 4750 4100 50  0000 L CNN
F 1 "0.1uF" V 4950 4050 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 4888 4000 50  0001 C CNN
F 3 "" H 4850 4150 50  0000 C CNN
F 4 "CAP CER 0.1UF 10V X5R 0402" H 4850 4150 60  0001 C CNN "Desc"
F 5 "Yageo" H 4850 4150 60  0001 C CNN "Manf"
F 6 "CC0402KRX5R6BB104" H 4850 4150 60  0001 C CNN "Manf#"
F 7 "311-1336-1-ND" H 4850 4150 60  0001 C CNN "Digikey#"
	1    4850 4150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR044
U 1 1 58F8C1FD
P 5650 3350
F 0 "#PWR044" H 5700 3400 20  0001 C CNN
F 1 "+3.3V" H 5650 3450 30  0000 C CNN
F 2 "" H -1100 -1350 60  0000 C CNN
F 3 "" H -1100 -1350 60  0000 C CNN
	1    5650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3350 5650 3600
$EndSCHEMATC
