EESchema Schematic File Version 2
LIBS:Connector
LIBS:ESP32-footprints-Shem-Lib
LIBS:ftdi
LIBS:OBDII_IoT
LIBS:STN2120
LIBS:PF_apiner-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6350 2100 2    40   Output ~ 0
PWM_RX
Text Label 5050 2000 2    40   ~ 0
J1850_BUS+
Text Label 5050 2200 2    40   ~ 0
J1850_BUS-
Text HLabel 4850 4100 0    40   Input ~ 0
J1850_BUS+_TX
Text HLabel 7800 4300 0    40   Input ~ 0
J1850_BUS-_TX
$Comp
L R R25
U 1 1 582FD8FC
P 3900 1850
F 0 "R25" V 3980 1850 50  0000 C CNN
F 1 "240" V 3900 1850 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 3830 1850 50  0001 C CNN
F 3 "" H 3900 1850 50  0000 C CNN
F 4 "RES SMD 240 OHM 1% 1/16W 0402" H 3900 1850 60  0001 C CNN "Desc"
F 5 "Yageo" H 3900 1850 60  0001 C CNN "Manf"
F 6 "RC0402FR-07240RL" H 3900 1850 60  0001 C CNN "Manf#"
F 7 "311-240LRCT-ND" H 3900 1850 60  0001 C CNN "Digikey#"
	1    3900 1850
	-1   0    0    1   
$EndComp
$Comp
L R R26
U 1 1 582FDADA
P 3900 2350
F 0 "R26" V 3980 2350 50  0000 C CNN
F 1 "866" V 3900 2350 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 3830 2350 50  0001 C CNN
F 3 "" H 3900 2350 50  0000 C CNN
F 4 "RES SMD 866 OHM 1% 1/16W 0402" H 3900 2350 60  0001 C CNN "Desc"
F 5 "Yaego" H 3900 2350 60  0001 C CNN "Manf"
F 6 "RC0402FR-07866RL" H 3900 2350 60  0001 C CNN "Manf#"
F 7 "YAG3248CT-ND" H 3900 2350 60  0001 C CNN "Digikey#"
	1    3900 2350
	-1   0    0    1   
$EndComp
$Comp
L R R27
U 1 1 5832E14E
P 3900 2750
F 0 "R27" V 3980 2750 50  0000 C CNN
F 1 "374" V 3900 2750 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 3830 2750 50  0001 C CNN
F 3 "" H 3900 2750 50  0000 C CNN
F 4 "RES SMD 374 OHM 1% 1/16W 0402" H 3900 2750 60  0001 C CNN "Desc"
F 5 "Yageo" H 3900 2750 60  0001 C CNN "Manf"
F 6 "RC0402FR-07374RL" H 3900 2750 60  0001 C CNN "Manf#"
F 7 "YAG3137CT-ND" H 3900 2750 60  0001 C CNN "Digikey#"
	1    3900 2750
	-1   0    0    1   
$EndComp
$Comp
L LM339 U3
U 2 1 58FEE375
P 5850 2100
F 0 "U3" H 5900 2250 50  0000 L CNN
F 1 "LM339" H 5900 1950 50  0000 L CNN
F 2 "soic-sop-tssop:TSSOP-14_4.4x5mm_Pitch0.65mm" H 6191 2009 50  0001 L CNN
F 3 "" H 4450 1450 50  0000 C CNN
F 4 "IC QUAD DIFF COMPARATOR 14-TSSOP" H 5850 2100 60  0001 C CNN "Desc"
F 5 "Texas Instruments" H 5850 2100 60  0001 C CNN "Manf"
F 6 "LM339PWR" H 5850 2100 60  0001 C CNN "Manf#"
F 7 "296-6607-1-ND" H 5850 2100 60  0001 C CNN "Digikey#"
	2    5850 2100
	1    0    0    -1  
$EndComp
$Comp
L LM339 U3
U 3 1 58FEE380
P 8550 1950
F 0 "U3" H 8600 2100 50  0000 L CNN
F 1 "LM339" H 8600 1800 50  0000 L CNN
F 2 "soic-sop-tssop:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8891 1859 50  0001 L CNN
F 3 "" H 7150 1300 50  0000 C CNN
F 4 "IC QUAD DIFF COMPARATOR 14-TSSOP" H 8550 1950 60  0001 C CNN "Desc"
F 5 "Texas Instruments" H 8550 1950 60  0001 C CNN "Manf"
F 6 "LM339PWR" H 8550 1950 60  0001 C CNN "Manf#"
F 7 "296-6607-1-ND" H 8550 1950 60  0001 C CNN "Digikey#"
	3    8550 1950
	1    0    0    -1  
$EndComp
$Comp
L MOS_N Q7
U 1 1 58FF3421
P 3550 2750
F 0 "Q7" H 3500 2950 50  0000 R CNN
F 1 "2N7002" V 3700 2850 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 3550 2750 60  0001 C CNN
F 3 "" H 3550 2750 60  0000 C CNN
F 4 "MOSFET N-CH 60V 260MA SOT-23" H 3550 2750 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 3550 2750 60  0001 C CNN "Manf"
F 6 "2N7002ET1G" H 3550 2750 60  0001 C CNN "Manf#"
F 7 "2N7002ET1GOSCT-ND" H 3550 2750 60  0001 C CNN "Digikey#"
	1    3550 2750
	1    0    0    -1  
$EndComp
Text HLabel 3300 2750 0    40   Input ~ 0
J1850_BUS+_VH
$Comp
L C C25
U 1 1 58FF9848
P 2950 1950
F 0 "C25" V 2850 1900 50  0000 L CNN
F 1 "0.1uF x 25V" V 3050 1700 50  0000 L CNN
F 2 "chip_rlc:c_0603" H 2988 1800 50  0001 C CNN
F 3 "" H 2950 1950 50  0000 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0603" H 2950 1950 60  0001 C CNN "Desc"
F 5 "Yageo" H 2950 1950 60  0001 C CNN "Manf"
F 6 "CC0603KRX7R8BB104" H 2950 1950 60  0001 C CNN "Manf#"
F 7 "311-1341-1-ND" H 2950 1950 60  0001 C CNN "Digikey#"
	1    2950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2100 3400 2150
Wire Wire Line
	3400 2150 3900 2150
Wire Wire Line
	3900 2000 3900 2200
Connection ~ 3900 2150
Wire Wire Line
	3850 1650 4150 1650
Wire Wire Line
	3900 1600 3900 1700
Wire Wire Line
	3000 1650 2950 1650
Wire Wire Line
	2950 1600 2950 1800
$Comp
L DLC_SW #PWR078
U 1 1 58FFBF93
P 2950 1600
F 0 "#PWR078" H 2950 1690 20  0001 C CNN
F 1 "DLC_SW" H 2950 1700 30  0000 C CNN
F 2 "" H 2950 1600 60  0000 C CNN
F 3 "" H 2950 1600 60  0000 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
Connection ~ 2950 1650
$Comp
L V_J1850 #PWR079
U 1 1 58FFC6C3
P 3900 1600
F 0 "#PWR079" H -450 890 20  0001 C CNN
F 1 "V_J1850" H 3900 1700 30  0000 C CNN
F 2 "" H -450 800 60  0000 C CNN
F 3 "" H -450 800 60  0000 C CNN
	1    3900 1600
	1    0    0    -1  
$EndComp
Connection ~ 3900 1650
$Comp
L GND #PWR080
U 1 1 58FFC795
P 2950 2200
F 0 "#PWR080" H 2950 1950 50  0001 C CNN
F 1 "GND" H 2950 2050 50  0001 C CNN
F 2 "" H 2950 2200 50  0000 C CNN
F 3 "" H 2950 2200 50  0000 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2200 2950 2100
Wire Wire Line
	3900 2500 3900 2600
Wire Wire Line
	3900 2550 3650 2550
Connection ~ 3900 2550
$Comp
L GND #PWR081
U 1 1 58FFC8CF
P 3900 3000
F 0 "#PWR081" H 3900 2750 50  0001 C CNN
F 1 "GND" H 3900 2850 50  0001 C CNN
F 2 "" H 3900 3000 50  0000 C CNN
F 3 "" H 3900 3000 50  0000 C CNN
	1    3900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2900 3900 3000
Wire Wire Line
	3900 2950 3650 2950
Connection ~ 3900 2950
Wire Wire Line
	3300 2750 3350 2750
$Comp
L R R30
U 1 1 58FFF46B
P 5300 2000
F 0 "R30" V 5380 2000 50  0000 C CNN
F 1 "10K" V 5300 2000 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 5230 2000 50  0001 C CNN
F 3 "" H 5300 2000 50  0000 C CNN
F 4 "Yageo" H 5300 2000 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 5300 2000 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 5300 2000 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 5300 2000 60  0001 C CNN "Digikey#"
	1    5300 2000
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky_BAT54SL D6
U 1 1 58FFFF10
P 1950 4350
F 0 "D6" H 2100 4250 50  0000 C CNN
F 1 "BAT54SL" H 1950 4450 50  0000 C CNN
F 2 "to-sod-sot:SOT-23" H 1950 4350 50  0001 C CNN
F 3 "" H 1950 4350 50  0000 C CNN
F 4 "Diode Array 1 Pair Series Connection Schottky 30V 200mA (DC) Surface Mount TO-236-3, SC-59, SOT-23-3" H 1950 4350 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 1950 4350 60  0001 C CNN "Manf"
F 6 "BAT54SLT1G" H 1950 4350 60  0001 C CNN "Manf#"
F 7 "BAT54SLT1GOSCT-ND" H 1950 4350 60  0001 C CNN "Digikey#"
	1    1950 4350
	0    1    -1   0   
$EndComp
$Comp
L C C24
U 1 1 58FFFF1B
P 2250 4350
F 0 "C24" V 2150 4300 50  0000 L CNN
F 1 "0.1uF x 25V" V 2350 4100 50  0000 L CNN
F 2 "chip_rlc:c_0603" H 2288 4200 50  0001 C CNN
F 3 "" H 2250 4350 50  0000 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0603" H 2250 4350 60  0001 C CNN "Desc"
F 5 "Yageo" H 2250 4350 60  0001 C CNN "Manf"
F 6 "CC0603KRX7R8BB104" H 2250 4350 60  0001 C CNN "Manf#"
F 7 "311-1341-1-ND" H 2250 4350 60  0001 C CNN "Digikey#"
	1    2250 4350
	1    0    0    -1  
$EndComp
Text Label 1700 4350 2    40   ~ 0
J1850_BUS+
Text Label 2850 4350 2    40   ~ 0
J1850_BUS-
$Comp
L DLC #PWR082
U 1 1 59002768
P 2250 4000
F 0 "#PWR082" H 2250 4090 20  0001 C CNN
F 1 "DLC" H 2250 4100 30  0000 C CNN
F 2 "" H 2250 4000 60  0000 C CNN
F 3 "" H 2250 4000 60  0000 C CNN
	1    2250 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR083
U 1 1 5900289A
P 2250 4700
F 0 "#PWR083" H 2250 4450 50  0001 C CNN
F 1 "GND" H 2250 4550 50  0001 C CNN
F 2 "" H 2250 4700 50  0000 C CNN
F 3 "" H 2250 4700 50  0000 C CNN
	1    2250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4500 2250 4700
Wire Wire Line
	2250 4650 1950 4650
Connection ~ 2250 4650
Wire Wire Line
	1950 4050 2250 4050
Wire Wire Line
	2250 4000 2250 4200
Connection ~ 2250 4050
$Comp
L D_Schottky_BAT54SL D7
U 1 1 59002A9E
P 3100 4350
F 0 "D7" H 3250 4250 50  0000 C CNN
F 1 "BAT54SL" H 3100 4450 50  0000 C CNN
F 2 "to-sod-sot:SOT-23" H 3100 4350 50  0001 C CNN
F 3 "" H 3100 4350 50  0000 C CNN
F 4 "Diode Array 1 Pair Series Connection Schottky 30V 200mA (DC) Surface Mount TO-236-3, SC-59, SOT-23-3" H 3100 4350 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 3100 4350 60  0001 C CNN "Manf"
F 6 "BAT54SLT1G" H 3100 4350 60  0001 C CNN "Manf#"
F 7 "BAT54SLT1GOSCT-ND" H 3100 4350 60  0001 C CNN "Digikey#"
	1    3100 4350
	0    1    -1   0   
$EndComp
$Comp
L C C26
U 1 1 59002AA8
P 3400 4350
F 0 "C26" V 3300 4300 50  0000 L CNN
F 1 "0.1uF x 25V" V 3500 4100 50  0000 L CNN
F 2 "chip_rlc:c_0603" H 3438 4200 50  0001 C CNN
F 3 "" H 3400 4350 50  0000 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0603" H 3400 4350 60  0001 C CNN "Desc"
F 5 "Yageo" H 3400 4350 60  0001 C CNN "Manf"
F 6 "CC0603KRX7R8BB104" H 3400 4350 60  0001 C CNN "Manf#"
F 7 "311-1341-1-ND" H 3400 4350 60  0001 C CNN "Digikey#"
	1    3400 4350
	1    0    0    -1  
$EndComp
$Comp
L DLC #PWR084
U 1 1 59002AAE
P 3400 4000
F 0 "#PWR084" H 3400 4090 20  0001 C CNN
F 1 "DLC" H 3400 4100 30  0000 C CNN
F 2 "" H 3400 4000 60  0000 C CNN
F 3 "" H 3400 4000 60  0000 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR085
U 1 1 59002AB4
P 3400 4700
F 0 "#PWR085" H 3400 4450 50  0001 C CNN
F 1 "GND" H 3400 4550 50  0001 C CNN
F 2 "" H 3400 4700 50  0000 C CNN
F 3 "" H 3400 4700 50  0000 C CNN
	1    3400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4500 3400 4700
Wire Wire Line
	3400 4650 3100 4650
Connection ~ 3400 4650
Wire Wire Line
	3100 4050 3400 4050
Wire Wire Line
	3400 4000 3400 4200
Connection ~ 3400 4050
Wire Wire Line
	2850 4350 2900 4350
Wire Wire Line
	1700 4350 1750 4350
Text HLabel 1600 2950 0    40   BiDi ~ 0
J1850_BUS+
Text HLabel 1600 3050 0    40   BiDi ~ 0
J1850_BUS-
Text Label 1750 2950 0    40   ~ 0
J1850_BUS+
Text Label 1750 3050 0    40   ~ 0
J1850_BUS-
Wire Wire Line
	1750 3050 1600 3050
Wire Wire Line
	1600 2950 1750 2950
$Comp
L R R31
U 1 1 5900554A
P 5300 2200
F 0 "R31" V 5380 2200 50  0000 C CNN
F 1 "10K" V 5300 2200 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 5230 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0000 C CNN
F 4 "Yageo" H 5300 2200 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 5300 2200 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 5300 2200 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 5300 2200 60  0001 C CNN "Digikey#"
	1    5300 2200
	0    -1   -1   0   
$EndComp
$Comp
L DLC_SW #PWR086
U 1 1 5900675A
P 5750 1700
F 0 "#PWR086" H 5750 1790 20  0001 C CNN
F 1 "DLC_SW" H 5750 1800 30  0000 C CNN
F 2 "" H 5750 1700 60  0000 C CNN
F 3 "" H 5750 1700 60  0000 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR087
U 1 1 5900679C
P 5750 2450
F 0 "#PWR087" H 5750 2200 50  0001 C CNN
F 1 "GND" H 5750 2300 50  0001 C CNN
F 2 "" H 5750 2450 50  0000 C CNN
F 3 "" H 5750 2450 50  0000 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2200 5150 2200
Wire Wire Line
	5450 2200 5550 2200
Wire Wire Line
	5050 2000 5150 2000
Wire Wire Line
	5450 2000 5550 2000
Wire Wire Line
	5750 1700 5750 1800
Wire Wire Line
	5750 2400 5750 2450
$Comp
L +3.3V #PWR088
U 1 1 59006FD8
P 6250 1700
F 0 "#PWR088" H 6300 1750 20  0001 C CNN
F 1 "+3.3V" H 6250 1800 30  0000 C CNN
F 2 "" H -500 -3000 60  0000 C CNN
F 3 "" H -500 -3000 60  0000 C CNN
	1    6250 1700
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 59006FE2
P 6250 1900
F 0 "R33" V 6330 1900 50  0000 C CNN
F 1 "10K" V 6250 1900 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 6180 1900 50  0001 C CNN
F 3 "" H 6250 1900 50  0000 C CNN
F 4 "Yageo" H 6250 1900 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 6250 1900 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 6250 1900 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 6250 1900 60  0001 C CNN "Digikey#"
	1    6250 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 1750 6250 1700
Text HLabel 9050 1950 2    40   Output ~ 0
VPW_RX
Wire Wire Line
	6150 2100 6350 2100
Wire Wire Line
	6250 2100 6250 2050
Connection ~ 6250 2100
$Comp
L MOS_N Q8
U 1 1 59007FAD
P 5150 4100
F 0 "Q8" H 5100 4300 50  0000 R CNN
F 1 "2N7002" V 5300 4200 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 5150 4100 60  0001 C CNN
F 3 "" H 5150 4100 60  0000 C CNN
F 4 "MOSFET N-CH 60V 260MA SOT-23" H 5150 4100 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 5150 4100 60  0001 C CNN "Manf"
F 6 "2N7002ET1G" H 5150 4100 60  0001 C CNN "Manf#"
F 7 "2N7002ET1GOSCT-ND" H 5150 4100 60  0001 C CNN "Digikey#"
	1    5150 4100
	1    0    0    -1  
$EndComp
$Comp
L MOS_P Q9
U 1 1 5900CF77
P 5500 3550
F 0 "Q9" V 5350 3700 50  0000 R CNN
F 1 "BSS314PE" V 5700 3700 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 5500 3550 60  0001 C CNN
F 3 "" H 5500 3550 60  0000 C CNN
F 4 "MOSFET P-CH 30V 1.5A SOT23" H 5500 3550 60  0001 C CNN "Desc"
F 5 "Infineon" H 5500 3550 60  0001 C CNN "Manf"
F 6 "BSS314PE H6327" H 5500 3550 60  0001 C CNN "Manf#"
F 7 "BSS314PE H6327CT-ND" H 5500 3550 60  0001 C CNN "Digikey#"
	1    5500 3550
	0    1    -1   0   
$EndComp
$Comp
L R R28
U 1 1 5900D39E
P 4900 4300
F 0 "R28" V 4980 4300 50  0000 C CNN
F 1 "10K" V 4900 4300 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 4830 4300 50  0001 C CNN
F 3 "" H 4900 4300 50  0000 C CNN
F 4 "Yageo" H 4900 4300 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 4900 4300 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 4900 4300 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 4900 4300 60  0001 C CNN "Digikey#"
	1    4900 4300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR089
U 1 1 5900D50B
P 5250 4500
F 0 "#PWR089" H 5250 4250 50  0001 C CNN
F 1 "GND" H 5250 4350 50  0001 C CNN
F 2 "" H 5250 4500 50  0000 C CNN
F 3 "" H 5250 4500 50  0000 C CNN
	1    5250 4500
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 5900D718
P 5250 3650
F 0 "R29" V 5330 3650 50  0000 C CNN
F 1 "10K" V 5250 3650 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 5180 3650 50  0001 C CNN
F 3 "" H 5250 3650 50  0000 C CNN
F 4 "Yageo" H 5250 3650 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 5250 3650 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 5250 3650 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 5250 3650 60  0001 C CNN "Digikey#"
	1    5250 3650
	-1   0    0    1   
$EndComp
$Comp
L D_Schot D8
U 1 1 5900E8B5
P 5950 3450
F 0 "D8" H 5900 3350 50  0000 L CNN
F 1 "DB2J31000L" H 5800 3550 40  0000 L CNN
F 2 "to-sod-sot:SOD-323" V 5950 3450 50  0001 C CNN
F 3 "" V 5950 3450 50  0000 C CNN
F 4 "Diode Schottky 30V 200mA Surface Mount SMini2-F5-B" H 5950 3450 60  0001 C CNN "Desc"
F 5 "Panasonic Electronic Components" H 5950 3450 60  0001 C CNN "Manf"
F 6 "DB2J31000L" H 5950 3450 60  0001 C CNN "Manf#"
F 7 "DB2J31000LCT-ND" H 5950 3450 60  0001 C CNN "Digikey#"
	1    5950 3450
	-1   0    0    1   
$EndComp
Text Label 6250 3450 0    40   ~ 0
J1850_BUS+
$Comp
L D_Schot D9
U 1 1 5900EFC2
P 6150 4250
F 0 "D9" H 6100 4350 50  0000 L CNN
F 1 "DB2J31000L" H 5950 4150 40  0000 L CNN
F 2 "to-sod-sot:SOD-323" V 6150 4250 50  0001 C CNN
F 3 "" V 6150 4250 50  0000 C CNN
F 4 "Diode Schottky 30V 200mA Surface Mount SMini2-F5-B" H 6150 4250 60  0001 C CNN "Desc"
F 5 "Panasonic Electronic Components" H 6150 4250 60  0001 C CNN "Manf"
F 6 "DB2J31000L" H 6150 4250 60  0001 C CNN "Manf#"
F 7 "DB2J31000LCT-ND" H 6150 4250 60  0001 C CNN "Digikey#"
	1    6150 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R32
U 1 1 5900F3D6
P 6150 3850
F 0 "R32" V 6230 3850 50  0000 C CNN
F 1 "10K" V 6150 3850 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 6080 3850 50  0001 C CNN
F 3 "" H 6150 3850 50  0000 C CNN
F 4 "Yageo" H 6150 3850 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 6150 3850 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 6150 3850 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 6150 3850 60  0001 C CNN "Digikey#"
	1    6150 3850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR090
U 1 1 5900F564
P 6150 4500
F 0 "#PWR090" H 6150 4250 50  0001 C CNN
F 1 "GND" H 6150 4350 50  0001 C CNN
F 2 "" H 6150 4500 50  0000 C CNN
F 3 "" H 6150 4500 50  0000 C CNN
	1    6150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4100 4950 4100
Wire Wire Line
	4900 4100 4900 4150
Connection ~ 4900 4100
Wire Wire Line
	5250 4300 5250 4500
Wire Wire Line
	5250 4450 4900 4450
Connection ~ 5250 4450
Wire Wire Line
	5250 3800 5250 3900
Wire Wire Line
	5250 3850 5500 3850
Wire Wire Line
	5500 3850 5500 3750
Connection ~ 5250 3850
Wire Wire Line
	5300 3450 5250 3450
Wire Wire Line
	5250 3400 5250 3500
$Comp
L V_J1850 #PWR091
U 1 1 5900FFB7
P 5250 3400
F 0 "#PWR091" H 900 2690 20  0001 C CNN
F 1 "V_J1850" H 5246 3528 30  0000 C CNN
F 2 "" H 900 2600 60  0000 C CNN
F 3 "" H 900 2600 60  0000 C CNN
	1    5250 3400
	1    0    0    -1  
$EndComp
Connection ~ 5250 3450
Wire Wire Line
	5850 3450 5700 3450
Wire Wire Line
	6050 3450 6250 3450
Wire Wire Line
	6150 3450 6150 3700
Connection ~ 6150 3450
Wire Wire Line
	6150 4000 6150 4150
Wire Wire Line
	6150 4500 6150 4350
$Comp
L +3.3V #PWR092
U 1 1 59011723
P 8950 1550
F 0 "#PWR092" H 9000 1600 20  0001 C CNN
F 1 "+3.3V" H 8950 1650 30  0000 C CNN
F 2 "" H 2200 -3150 60  0000 C CNN
F 3 "" H 2200 -3150 60  0000 C CNN
	1    8950 1550
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 5901172D
P 8950 1750
F 0 "R39" V 9030 1750 50  0000 C CNN
F 1 "10K" V 8950 1750 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 8880 1750 50  0001 C CNN
F 3 "" H 8950 1750 50  0000 C CNN
F 4 "Yageo" H 8950 1750 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 8950 1750 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 8950 1750 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 8950 1750 60  0001 C CNN "Digikey#"
	1    8950 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 1600 8950 1550
$Comp
L DLC_SW #PWR093
U 1 1 5901176C
P 8450 1550
F 0 "#PWR093" H 8450 1640 20  0001 C CNN
F 1 "DLC_SW" H 8450 1650 30  0000 C CNN
F 2 "" H 8450 1550 60  0000 C CNN
F 3 "" H 8450 1550 60  0000 C CNN
	1    8450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1550 8450 1650
$Comp
L R R35
U 1 1 59011805
P 7350 2250
F 0 "R35" V 7430 2250 50  0000 C CNN
F 1 "10K" V 7350 2250 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 7280 2250 50  0001 C CNN
F 3 "" H 7350 2250 50  0000 C CNN
F 4 "Yageo" H 7350 2250 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 7350 2250 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 7350 2250 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 7350 2250 60  0001 C CNN "Digikey#"
	1    7350 2250
	-1   0    0    1   
$EndComp
$Comp
L R R34
U 1 1 590118B7
P 7350 1850
F 0 "R34" V 7430 1850 50  0000 C CNN
F 1 "2,7K" V 7350 1850 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 7280 1850 50  0001 C CNN
F 3 "" H 7350 1850 50  0000 C CNN
F 4 "RES SMD 2.7K OHM 5% 1/16W 0402" H 7350 1850 60  0001 C CNN "Desc"
F 5 "Yageo" H 7350 1850 60  0001 C CNN "Manf"
F 6 "RC0402JR-072K7L" H 7350 1850 60  0001 C CNN "Manf#"
F 7 "311-2.7KJRCT-ND" H 7350 1850 60  0001 C CNN "Digikey#"
	1    7350 1850
	-1   0    0    1   
$EndComp
$Comp
L R R37
U 1 1 590119B2
P 8050 1850
F 0 "R37" V 8130 1850 50  0000 C CNN
F 1 "10K" V 8050 1850 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 7980 1850 50  0001 C CNN
F 3 "" H 8050 1850 50  0000 C CNN
F 4 "Yageo" H 8050 1850 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 8050 1850 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 8050 1850 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 8050 1850 60  0001 C CNN "Digikey#"
	1    8050 1850
	0    -1   -1   0   
$EndComp
Text Label 7850 1850 2    40   ~ 0
J1850_BUS+
Wire Wire Line
	7850 1850 7900 1850
Wire Wire Line
	8200 1850 8250 1850
Wire Wire Line
	7350 2000 7350 2100
Wire Wire Line
	7350 2050 8250 2050
Connection ~ 7350 2050
$Comp
L +5V_SW #PWR094
U 1 1 590137AA
P 7350 1550
F 0 "#PWR094" H 7350 1640 20  0001 C CNN
F 1 "+5V_SW" H 7350 1650 30  0000 C CNN
F 2 "" H 7350 1550 60  0000 C CNN
F 3 "" H 7350 1550 60  0000 C CNN
	1    7350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1550 7350 1700
$Comp
L GND #PWR095
U 1 1 5901397C
P 7350 2450
F 0 "#PWR095" H 7350 2200 50  0001 C CNN
F 1 "GND" H 7350 2300 50  0001 C CNN
F 2 "" H 7350 2450 50  0000 C CNN
F 3 "" H 7350 2450 50  0000 C CNN
	1    7350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2450 7350 2400
$Comp
L GND #PWR096
U 1 1 59013A21
P 8450 2450
F 0 "#PWR096" H 8450 2200 50  0001 C CNN
F 1 "GND" H 8450 2300 50  0001 C CNN
F 2 "" H 8450 2450 50  0000 C CNN
F 3 "" H 8450 2450 50  0000 C CNN
	1    8450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2450 8450 2250
Wire Wire Line
	8850 1950 9050 1950
Wire Wire Line
	8950 1950 8950 1900
Connection ~ 8950 1950
$Comp
L +5V_SW #PWR097
U 1 1 590144CF
P 8200 3400
F 0 "#PWR097" H 8200 3490 20  0001 C CNN
F 1 "+5V_SW" H 8200 3500 30  0000 C CNN
F 2 "" H 8200 3400 60  0000 C CNN
F 3 "" H 8200 3400 60  0000 C CNN
	1    8200 3400
	1    0    0    -1  
$EndComp
$Comp
L D_Schot D10
U 1 1 590146A5
P 8200 3550
F 0 "D10" H 8150 3650 50  0000 L CNN
F 1 "DB2J31000L" H 8000 3450 40  0000 L CNN
F 2 "to-sod-sot:SOD-323" V 8200 3550 50  0001 C CNN
F 3 "" V 8200 3550 50  0000 C CNN
F 4 "Diode Schottky 30V 200mA Surface Mount SMini2-F5-B" H 8200 3550 60  0001 C CNN "Desc"
F 5 "Panasonic Electronic Components" H 8200 3550 60  0001 C CNN "Manf"
F 6 "DB2J31000L" H 8200 3550 60  0001 C CNN "Manf#"
F 7 "DB2J31000LCT-ND" H 8200 3550 60  0001 C CNN "Digikey#"
	1    8200 3550
	0    -1   -1   0   
$EndComp
$Comp
L R R38
U 1 1 590146AF
P 8200 3850
F 0 "R38" V 8280 3850 50  0000 C CNN
F 1 "10K" V 8200 3850 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 8130 3850 50  0001 C CNN
F 3 "" H 8200 3850 50  0000 C CNN
F 4 "Yageo" H 8200 3850 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 8200 3850 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 8200 3850 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 8200 3850 60  0001 C CNN "Digikey#"
	1    8200 3850
	-1   0    0    1   
$EndComp
$Comp
L MOS_N Q10
U 1 1 590147AD
P 8100 4300
F 0 "Q10" H 8050 4500 50  0000 R CNN
F 1 "2N7002" V 8250 4400 40  0000 R CNN
F 2 "to-sod-sot:SOT-23" H 8100 4300 60  0001 C CNN
F 3 "" H 8100 4300 60  0000 C CNN
F 4 "MOSFET N-CH 60V 260MA SOT-23" H 8100 4300 60  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 8100 4300 60  0001 C CNN "Manf"
F 6 "2N7002ET1G" H 8100 4300 60  0001 C CNN "Manf#"
F 7 "2N7002ET1GOSCT-ND" H 8100 4300 60  0001 C CNN "Digikey#"
	1    8100 4300
	1    0    0    -1  
$EndComp
$Comp
L R R36
U 1 1 59015277
P 7850 3850
F 0 "R36" V 7930 3850 50  0000 C CNN
F 1 "10K" V 7850 3850 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 7780 3850 50  0001 C CNN
F 3 "" H 7850 3850 50  0000 C CNN
F 4 "Yageo" H 7850 3850 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 7850 3850 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 7850 3850 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 7850 3850 60  0001 C CNN "Digikey#"
	1    7850 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 4300 7900 4300
$Comp
L GND #PWR098
U 1 1 590155AC
P 8200 4550
F 0 "#PWR098" H 8200 4300 50  0001 C CNN
F 1 "GND" H 8200 4400 50  0001 C CNN
F 2 "" H 8200 4550 50  0000 C CNN
F 3 "" H 8200 4550 50  0000 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
$Comp
L +5V_SW #PWR099
U 1 1 59015925
P 7850 3400
F 0 "#PWR099" H 7850 3490 20  0001 C CNN
F 1 "+5V_SW" H 7850 3500 30  0000 C CNN
F 2 "" H 7850 3400 60  0000 C CNN
F 3 "" H 7850 3400 60  0000 C CNN
	1    7850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3700 7850 3400
Wire Wire Line
	7850 4300 7850 4000
Connection ~ 7850 4300
Wire Wire Line
	8200 4000 8200 4100
Wire Wire Line
	8200 3700 8200 3650
Wire Wire Line
	8200 3450 8200 3400
Text Label 8300 4050 0    40   ~ 0
J1850_BUS-
Wire Wire Line
	8200 4050 8300 4050
Connection ~ 8200 4050
Wire Wire Line
	8200 4550 8200 4500
$Comp
L LM317LD U9
U 1 1 58F8CA15
P 3400 1650
F 0 "U9" H 3225 1875 50  0000 C CNN
F 1 "LM317" H 3300 1800 50  0000 C CNN
F 2 "to-sod-sot:SOT-89-3" H 3425 1816 40  0001 C CNN
F 3 "" H -1050 550 40  0000 C CNN
F 4 "IC REG LINEAR ADJ 0.1A SOT89-3" H 3400 1650 60  0001 C CNN "Desc"
F 5 "Texas Instruments" H 3400 1650 60  0001 C CNN "Manf"
F 6 "LM317LCPK" H 3400 1650 60  0001 C CNN "Manf#"
F 7 "296-26093-1-ND" H 3400 1650 60  0001 C CNN "Digikey#"
	1    3400 1650
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 58FD532B
P 4150 1850
F 0 "C27" V 4050 1800 50  0000 L CNN
F 1 "0.1uF x 25V" V 4250 1600 50  0000 L CNN
F 2 "chip_rlc:c_0603" H 4188 1700 50  0001 C CNN
F 3 "" H 4150 1850 50  0000 C CNN
F 4 "CAP CER 0.1UF 25V X7R 0603" H 4150 1850 60  0001 C CNN "Desc"
F 5 "Yageo" H 4150 1850 60  0001 C CNN "Manf"
F 6 "CC0603KRX7R8BB104" H 4150 1850 60  0001 C CNN "Manf#"
F 7 "311-1341-1-ND" H 4150 1850 60  0001 C CNN "Digikey#"
	1    4150 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0100
U 1 1 58FD55BE
P 4150 2150
F 0 "#PWR0100" H 4150 1900 50  0001 C CNN
F 1 "GND" H 4150 2000 50  0001 C CNN
F 2 "" H 4150 2150 50  0000 C CNN
F 3 "" H 4150 2150 50  0000 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2150 4150 2000
Wire Wire Line
	4150 1650 4150 1700
$EndSCHEMATC
