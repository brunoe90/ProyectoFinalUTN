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
Sheet 3 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4400 4650 0    40   Input ~ 0
PWR_SAVE
$Comp
L DLC #PWR029
U 1 1 5833D47C
P 5350 4600
F 0 "#PWR029" H 5350 4690 20  0001 C CNN
F 1 "DLC" H 5350 4700 30  0000 C CNN
F 2 "" H 5350 4600 60  0000 C CNN
F 3 "" H 5350 4600 60  0000 C CNN
	1    5350 4600
	1    0    0    -1  
$EndComp
$Comp
L DLC_SW #PWR030
U 1 1 5833D496
P 5950 4600
F 0 "#PWR030" H 5950 4690 20  0001 C CNN
F 1 "DLC_SW" H 5950 4700 30  0000 C CNN
F 2 "" H 5950 4600 60  0000 C CNN
F 3 "" H 5950 4600 60  0000 C CNN
	1    5950 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V_SW #PWR031
U 1 1 5833D581
P 6900 4600
F 0 "#PWR031" H 6900 4690 20  0001 C CNN
F 1 "+5V_SW" H 6900 4700 30  0000 C CNN
F 2 "" H 6900 4600 60  0000 C CNN
F 3 "" H 6900 4600 60  0000 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4650 4700 4650
Wire Wire Line
	4600 4300 4600 4650
Connection ~ 4600 4650
Wire Wire Line
	5000 4300 5000 4450
$Comp
L DLC #PWR032
U 1 1 5833D8D2
P 5000 3900
F 0 "#PWR032" H 5000 3990 20  0001 C CNN
F 1 "DLC" H 5000 4000 30  0000 C CNN
F 2 "" H 5000 3900 60  0000 C CNN
F 3 "" H 5000 3900 60  0000 C CNN
	1    5000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3900 5000 4000
$Comp
L GND #PWR033
U 1 1 5833D90C
P 5000 4950
F 0 "#PWR033" H 5000 4700 50  0001 C CNN
F 1 "GND" H 5000 4800 50  0000 C CNN
F 2 "" H 5000 4950 50  0000 C CNN
F 3 "" H 5000 4950 50  0000 C CNN
	1    5000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4950 5000 4850
Connection ~ 5000 4400
Wire Wire Line
	6900 4600 6900 5000
Wire Wire Line
	6900 4850 6800 4850
Wire Wire Line
	6300 4850 6400 4850
Wire Wire Line
	6600 4400 6600 4550
Wire Wire Line
	5950 4600 5950 5000
Wire Wire Line
	5950 4850 5850 4850
Wire Wire Line
	5450 4850 5350 4850
Wire Wire Line
	5350 4600 5350 5000
Wire Wire Line
	5650 4550 5650 4400
Connection ~ 5650 4400
$Comp
L PWR_FLAG #FLG034
U 1 1 584984F2
P 5350 5000
F 0 "#FLG034" H 5350 5095 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 5200 40  0000 C CNN
F 2 "" H 5350 5000 50  0000 C CNN
F 3 "" H 5350 5000 50  0000 C CNN
	1    5350 5000
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG035
U 1 1 58498516
P 5950 5000
F 0 "#FLG035" H 5950 5095 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 5200 40  0000 C CNN
F 2 "" H 5950 5000 50  0000 C CNN
F 3 "" H 5950 5000 50  0000 C CNN
	1    5950 5000
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG036
U 1 1 5849858A
P 6900 5000
F 0 "#FLG036" H 6900 5095 50  0001 C CNN
F 1 "PWR_FLAG" H 6900 5200 40  0000 C CNN
F 2 "" H 6900 5000 50  0000 C CNN
F 3 "" H 6900 5000 50  0000 C CNN
	1    6900 5000
	-1   0    0    1   
$EndComp
Connection ~ 5350 4850
Connection ~ 5950 4850
Connection ~ 6900 4850
$Comp
L R R3
U 1 1 58FA0F0C
P 4600 4150
F 0 "R3" V 4500 4150 50  0000 C CNN
F 1 "100k" V 4600 4150 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 4530 4150 50  0001 C CNN
F 3 "" H 4600 4150 50  0000 C CNN
F 4 "RES SMD 100K OHM 1% 1/16W 0402" H 4600 4150 60  0001 C CNN "Desc"
F 5 "Yageo" H 4600 4150 60  0001 C CNN "Manf"
F 6 "RC0402FR-07100KL" H 4600 4150 60  0001 C CNN "Manf#"
F 7 "311-100KLRCT-ND" H 4600 4150 60  0001 C CNN "Digikey#"
	1    4600 4150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR037
U 1 1 58FA0FB6
P 4600 3900
F 0 "#PWR037" H 4650 3950 20  0001 C CNN
F 1 "+3.3V" H 4600 4000 30  0000 C CNN
F 2 "" H -2150 -800 60  0000 C CNN
F 3 "" H -2150 -800 60  0000 C CNN
	1    4600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3900 4600 4000
$Comp
L R R4
U 1 1 58FA1022
P 5000 4150
F 0 "R4" V 4900 4150 50  0000 C CNN
F 1 "100k" V 5000 4150 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 4930 4150 50  0001 C CNN
F 3 "" H 5000 4150 50  0000 C CNN
F 4 "RES SMD 100K OHM 1% 1/16W 0402" H 5000 4150 60  0001 C CNN "Desc"
F 5 "Yageo" H 5000 4150 60  0001 C CNN "Manf"
F 6 "RC0402FR-07100KL" H 5000 4150 60  0001 C CNN "Manf#"
F 7 "311-100KLRCT-ND" H 5000 4150 60  0001 C CNN "Digikey#"
	1    5000 4150
	1    0    0    -1  
$EndComp
$Comp
L MOS_P Q2
U 1 1 58FA2395
P 5650 4750
F 0 "Q2" V 5500 4650 50  0000 R CNN
F 1 "BSS314PE" V 5800 4900 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 5650 4750 60  0001 C CNN
F 3 "" H 5650 4750 60  0000 C CNN
F 4 "MOSFET P-CH 30V 1.5A SOT23" H 5650 4750 60  0001 C CNN "Desc"
F 5 "Infineon" H 5650 4750 60  0001 C CNN "Manf"
F 6 "BSS314PE H6327" H 5650 4750 60  0001 C CNN "Manf#"
F 7 "BSS314PE H6327CT-ND" H 5650 4750 60  0001 C CNN "Digikey#"
	1    5650 4750
	0    1    1    0   
$EndComp
$Comp
L MOS_N Q1
U 1 1 58FA23A0
P 4900 4650
F 0 "Q1" H 4850 4850 50  0000 R CNN
F 1 "2N7002" V 5050 4750 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 4900 4650 60  0001 C CNN
F 3 "" H 4900 4650 60  0000 C CNN
F 4 "MOSFET N-CH 60V 260MA SOT-23" H 4900 4650 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 4900 4650 60  0001 C CNN "Manf"
F 6 "2N7002ET1G" H 4900 4650 60  0001 C CNN "Manf#"
F 7 "2N7002ET1GOSCT-ND" H 4900 4650 60  0001 C CNN "Digikey#"
	1    4900 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR038
U 1 1 58FA6825
P 6300 4600
F 0 "#PWR038" H 6300 4690 20  0001 C CNN
F 1 "+5V" H 6300 4700 30  0000 C CNN
F 2 "" H 6300 4600 60  0000 C CNN
F 3 "" H 6300 4600 60  0000 C CNN
	1    6300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4600 6300 5000
$Comp
L PWR_FLAG #FLG039
U 1 1 58FA7137
P 6300 5000
F 0 "#FLG039" H 6300 5095 50  0001 C CNN
F 1 "PWR_FLAG" H 6250 5200 40  0000 C CNN
F 2 "" H 6300 5000 50  0000 C CNN
F 3 "" H 6300 5000 50  0000 C CNN
	1    6300 5000
	-1   0    0    1   
$EndComp
Connection ~ 6300 4850
Wire Wire Line
	6600 4400 5000 4400
$Comp
L MOS_P Q3
U 1 1 59009220
P 6600 4750
F 0 "Q3" V 6450 4650 50  0000 R CNN
F 1 "BSS314PE" V 6750 4900 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 6600 4750 60  0001 C CNN
F 3 "" H 6600 4750 60  0000 C CNN
F 4 "MOSFET P-CH 30V 1.5A SOT23" H 6600 4750 60  0001 C CNN "Desc"
F 5 "Infineon" H 6600 4750 60  0001 C CNN "Manf"
F 6 "BSS314PE H6327" H 6600 4750 60  0001 C CNN "Manf#"
F 7 "BSS314PE H6327CT-ND" H 6600 4750 60  0001 C CNN "Digikey#"
	1    6600 4750
	0    1    1    0   
$EndComp
$EndSCHEMATC