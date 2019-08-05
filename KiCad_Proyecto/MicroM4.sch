EESchema Schematic File Version 4
LIBS:PF_apiner-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
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
L PF_apiner-rescue:ESP32-WROOM-ESP32-footprints-Shem-Lib1 U14
U 1 1 5B862489
P 5650 3400
F 0 "U14" H 5625 4787 60  0000 C CNN
F 1 "ESP32-WROOM" H 5625 4681 60  0000 C CNN
F 2 "ESP32-footprints-Lib:ESP32-WROOM" H 6000 4750 60  0001 C CNN
F 3 "" H 5200 3850 60  0001 C CNN
F 4 "WIFI MODULE 32MBITS SPI FLASH" H 5650 3400 50  0001 C CNN "Desc"
F 5 "Espressif Systems" H 5650 3400 50  0001 C CNN "Manf"
F 6 "ESP32-WROOM-32D" H 5650 3400 50  0001 C CNN "Manf#"
F 7 "1904-1023-1-ND" H 5650 3400 50  0001 C CNN "Digikey#"
	1    5650 3400
	1    0    0    -1  
$EndComp
$Comp
L PF_apiner-rescue:+3.3V-OBDII_IoT1 #PWR0120
U 1 1 5B862539
P 4500 2300
F 0 "#PWR0120" H 4500 2390 20  0001 C CNN
F 1 "+3.3V" H 4496 2428 30  0000 C CNN
F 2 "" H 4500 2300 60  0000 C CNN
F 3 "" H 4500 2300 60  0000 C CNN
	1    4500 2300
	1    0    0    -1  
$EndComp
NoConn ~ 6550 3150
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0121
U 1 1 5B862710
P 6750 4100
F 0 "#PWR0121" H 6750 3850 50  0001 C CNN
F 1 "GND" H 6755 3927 50  0001 C CNN
F 2 "" H 6750 4100 50  0000 C CNN
F 3 "" H 6750 4100 50  0000 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4050 6750 4050
Wire Wire Line
	6750 3950 6750 4100
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0122
U 1 1 5B86275E
P 5200 4550
F 0 "#PWR0122" H 5200 4300 50  0001 C CNN
F 1 "GND" H 5205 4377 50  0001 C CNN
F 2 "" H 5200 4550 50  0000 C CNN
F 3 "" H 5200 4550 50  0000 C CNN
	1    5200 4550
	1    0    0    -1  
$EndComp
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0123
U 1 1 5B86276B
P 4600 4150
F 0 "#PWR0123" H 4600 3900 50  0001 C CNN
F 1 "GND" H 4605 3977 50  0001 C CNN
F 2 "" H 4600 4150 50  0000 C CNN
F 3 "" H 4600 4150 50  0000 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4000 4600 4150
Wire Wire Line
	4600 4100 4700 4100
Wire Wire Line
	5200 4550 5200 4450
Wire Wire Line
	6550 2850 7000 2850
Wire Wire Line
	6550 2950 7000 2950
Wire Wire Line
	3600 2450 4000 2450
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0124
U 1 1 5B862FB4
P 3800 2450
F 0 "#PWR0124" H 3800 2200 50  0001 C CNN
F 1 "GND" H 3805 2277 50  0001 C CNN
F 2 "" H 3800 2450 50  0000 C CNN
F 3 "" H 3800 2450 50  0000 C CNN
	1    3800 2450
	1    0    0    -1  
$EndComp
Connection ~ 3800 2450
Wire Wire Line
	3600 2150 4000 2150
$Comp
L PF_apiner-rescue:+3.3V-OBDII_IoT1 #PWR0125
U 1 1 5B86325C
P 3800 2150
F 0 "#PWR0125" H 3800 2240 20  0001 C CNN
F 1 "+3.3V" H 3796 2278 30  0000 C CNN
F 2 "" H 3800 2150 60  0000 C CNN
F 3 "" H 3800 2150 60  0000 C CNN
	1    3800 2150
	1    0    0    -1  
$EndComp
Connection ~ 3800 2150
Wire Wire Line
	4700 2350 4700 2800
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0126
U 1 1 5B8638AE
P 4250 3250
F 0 "#PWR0126" H 4250 3000 50  0001 C CNN
F 1 "GND" H 4255 3077 50  0001 C CNN
F 2 "" H 4250 3250 50  0000 C CNN
F 3 "" H 4250 3250 50  0000 C CNN
	1    4250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2900 4700 2900
Text HLabel 7000 2850 2    50   Output ~ 0
UART0_TX
Text HLabel 5500 4850 3    50   Output ~ 0
UART1_TX
Text HLabel 7000 2950 2    50   Input ~ 0
UART0_RX
Text HLabel 5400 4850 3    50   Input ~ 0
UART1_RX
Wire Wire Line
	5400 4450 5400 4850
Wire Wire Line
	5500 4450 5500 4850
Text HLabel 7050 3550 2    50   Input ~ 0
PWR_SAVE
Text HLabel 7000 3050 2    50   Output ~ 0
STN_SLEEP
Text HLabel 4350 3600 0    50   Output ~ 0
STN_RESET
Text Notes 8750 3650 0    50   ~ 0
PAG 10\npull-up interno\nGPIO 0 -> 0: DOWNLOAD BOOT\nGPIO 0 -> 1: SPI BOOT
Text Notes 6250 4800 0    50   ~ 0
PAG 10\nGPIO15 -> MTDO-> 0 -> U0TXD Silent\ndejarlo sin soldar la resistencia y despues poner una de 0 ohm
Wire Wire Line
	4700 4000 4600 4000
Connection ~ 4600 4100
Text Notes 3600 4150 0    50   ~ 0
PAG 15 Figure 5\nGPIO12 -> MTDI ->0
Text HLabel 3050 2900 0    50   BiDi ~ 0
RESET
$Comp
L PF_apiner-rescue:C-OBDII_IoT1 C?
U 1 1 5B8CBC06
P 4000 2300
AR Path="/582F2211/5B8CBC06" Ref="C?"  Part="1" 
AR Path="/5B8CBC06" Ref="C?"  Part="1" 
AR Path="/58A74A6E/5B8CBC06" Ref="C37"  Part="1" 
F 0 "C37" H 3850 2400 50  0000 L CNN
F 1 "0.1uF" H 3950 2200 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 4038 2150 50  0001 C CNN
F 3 "" H 4000 2300 50  0000 C CNN
F 4 "CAP CER 0.1UF 10V X5R 0402" H 4000 2300 60  0001 C CNN "Desc"
F 5 "Yageo" H 4000 2300 60  0001 C CNN "Manf"
F 6 "CC0402KRX5R6BB104" H 4000 2300 60  0001 C CNN "Manf#"
F 7 "311-1336-1-ND" H 4000 2300 60  0001 C CNN "Digikey#"
	1    4000 2300
	-1   0    0    -1  
$EndComp
$Comp
L PF_apiner-rescue:C-OBDII_IoT1 C?
U 1 1 5B8CBF7F
P 4250 3100
AR Path="/582F2211/5B8CBF7F" Ref="C?"  Part="1" 
AR Path="/5B8CBF7F" Ref="C?"  Part="1" 
AR Path="/58A74A6E/5B8CBF7F" Ref="C38"  Part="1" 
F 0 "C38" V 4150 3050 50  0000 L CNN
F 1 "0.1uF" V 4350 3000 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 4288 2950 50  0001 C CNN
F 3 "" H 4250 3100 50  0000 C CNN
F 4 "CAP CER 0.1UF 10V X5R 0402" H 4250 3100 60  0001 C CNN "Desc"
F 5 "Yageo" H 4250 3100 60  0001 C CNN "Manf"
F 6 "CC0402KRX5R6BB104" H 4250 3100 60  0001 C CNN "Manf#"
F 7 "311-1336-1-ND" H 4250 3100 60  0001 C CNN "Digikey#"
	1    4250 3100
	-1   0    0    -1  
$EndComp
$Comp
L PF_apiner-rescue:C-OBDII_IoT1 C?
U 1 1 5B8D3E2F
P 3600 2300
AR Path="/582F2211/5B8D3E2F" Ref="C?"  Part="1" 
AR Path="/58A74A6E/5B8D3E2F" Ref="C36"  Part="1" 
F 0 "C36" H 3625 2400 50  0000 L CNN
F 1 "10uF" H 3625 2200 50  0000 L CNN
F 2 "chip_rlc:c_0603" H 3638 2150 50  0001 C CNN
F 3 "" H 3600 2300 50  0000 C CNN
F 4 "CAP CER 10UF 6.3V X5R 0603" H 3600 2300 60  0001 C CNN "Desc"
F 5 "Taiyo Yuden" H 3600 2300 60  0001 C CNN "Manf"
F 6 "JMK107BJ106MA-T" H 3600 2300 60  0001 C CNN "Manf#"
F 7 "587-1256-1-ND" H 3600 2300 60  0001 C CNN "Digikey#"
	1    3600 2300
	1    0    0    -1  
$EndComp
$Comp
L PF_apiner-rescue:R-OBDII_IoT1 R?
U 1 1 5B8D4B64
P 4500 2550
AR Path="/58340E0B/5B8D4B64" Ref="R?"  Part="1" 
AR Path="/58A74A6E/5B8D4B64" Ref="R52"  Part="1" 
F 0 "R52" V 4550 2350 50  0000 C CNN
F 1 "10K" V 4500 2550 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 4430 2550 50  0001 C CNN
F 3 "" H 4500 2550 50  0000 C CNN
F 4 "Yageo" H 4500 2550 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 4500 2550 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 4500 2550 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 4500 2550 60  0001 C CNN "Digikey#"
	1    4500 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 3600 4700 3600
NoConn ~ 4700 3000
NoConn ~ 4700 3100
NoConn ~ 4700 3200
NoConn ~ 4700 3300
NoConn ~ 4700 3700
NoConn ~ 4700 3800
NoConn ~ 5300 4450
NoConn ~ 5600 4450
NoConn ~ 5700 4450
NoConn ~ 5800 4450
NoConn ~ 5900 4450
NoConn ~ 6550 3750
NoConn ~ 6550 3350
NoConn ~ 6550 3250
NoConn ~ 6550 2750
NoConn ~ 6550 2650
NoConn ~ 6550 3650
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0127
U 1 1 5B9BDD0C
P 8200 4400
F 0 "#PWR0127" H 8200 4150 50  0001 C CNN
F 1 "GND" H 8205 4227 50  0001 C CNN
F 2 "" H 8200 4400 50  0000 C CNN
F 3 "" H 8200 4400 50  0000 C CNN
	1    8200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3950 6750 3950
Connection ~ 6750 4050
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0128
U 1 1 5B9BDFD1
P 6100 4600
F 0 "#PWR0128" H 6100 4350 50  0001 C CNN
F 1 "GND" H 6105 4427 50  0001 C CNN
F 2 "" H 6100 4600 50  0000 C CNN
F 3 "" H 6100 4600 50  0000 C CNN
	1    6100 4600
	1    0    0    -1  
$EndComp
$Comp
L PF_apiner-rescue:R-OBDII_IoT1 R53
U 1 1 5B9C04A8
P 6900 2600
F 0 "R53" V 6980 2600 50  0000 C CNN
F 1 "100K" V 6900 2600 50  0000 C CNN
F 2 "chip_rlc:l_0402" V 6830 2600 50  0001 C CNN
F 3 "" H 6900 2600 50  0000 C CNN
F 4 "RES SMD 100K OHM 1% 1/10W 0402" H 6900 2600 60  0001 C CNN "Desc"
F 5 "Vishay Beyschlag" H 6900 2600 60  0001 C CNN "Manf"
F 6 "MCS04020C1003FE000" H 6900 2600 60  0001 C CNN "Manf#"
F 7 "MCS0402-100K-CFCT-ND" H 6900 2600 60  0001 C CNN "Digikey#"
	1    6900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2750 6900 2950
Connection ~ 6900 2950
$Comp
L PF_apiner-rescue:+3.3V-OBDII_IoT1 #PWR0129
U 1 1 5B9C0576
P 6900 2350
F 0 "#PWR0129" H 6900 2440 20  0001 C CNN
F 1 "+3.3V" H 6896 2478 30  0000 C CNN
F 2 "" H 6900 2350 60  0000 C CNN
F 3 "" H 6900 2350 60  0000 C CNN
	1    6900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2350 6900 2450
Connection ~ 3350 2900
$Comp
L PF_apiner-rescue:GND-OBDII_IoT1 #PWR0130
U 1 1 5B9BE7F3
P 3350 3600
F 0 "#PWR0130" H 3350 3350 50  0001 C CNN
F 1 "GND" H 3355 3427 50  0001 C CNN
F 2 "" H 3350 3600 50  0000 C CNN
F 3 "" H 3350 3600 50  0000 C CNN
	1    3350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3600 3350 3500
$Comp
L PF_apiner-rescue:SW_SPST-OBDII_IoT1 SW2
U 1 1 5B9C003A
P 8300 4100
F 0 "SW2" H 8300 4270 50  0000 C CNN
F 1 "SW_BOOT" H 8300 3900 50  0000 C CNN
F 2 "misc:TACT_SMD_4.5X4.5" H 8300 4100 50  0001 C CNN
F 3 "" H 8300 4100 50  0001 C CNN
F 4 "Tactile Switch SPST-NO Top Actuated Surface Mount" H 8300 4100 60  0001 C CNN "Desc"
F 5 "E-Switch" H 8300 4100 60  0001 C CNN "Manf"
F 6 "TL3305AF160QG" H 8300 4100 60  0001 C CNN "Manf#"
F 7 "EG5350CT-ND" H 8300 4100 60  0001 C CNN "Digikey#"
	1    8300 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 3700 8300 3850
Wire Wire Line
	8200 4350 8200 4400
Wire Wire Line
	8200 4400 8650 4400
Wire Wire Line
	8300 4400 8300 4350
Wire Wire Line
	3350 3000 3350 2900
Wire Wire Line
	3450 3000 3450 2900
Connection ~ 3450 2900
Wire Wire Line
	3450 3500 3450 3600
Wire Wire Line
	3450 3600 3350 3600
$Comp
L PF_apiner-rescue:SW_SPST-OBDII_IoT1 SW1
U 1 1 5B9C0668
P 3450 3250
F 0 "SW1" H 3450 3420 50  0000 C CNN
F 1 "SW_RESET" H 3450 3050 50  0000 C CNN
F 2 "misc:TACT_SMD_4.5X4.5" H 3450 3250 50  0001 C CNN
F 3 "" H 3450 3250 50  0001 C CNN
F 4 "Tactile Switch SPST-NO Top Actuated Surface Mount" H 3450 3250 60  0001 C CNN "Desc"
F 5 "E-Switch" H 3450 3250 60  0001 C CNN "Manf"
F 6 "TL3305AF160QG" H 3450 3250 60  0001 C CNN "Manf#"
F 7 "EG5350CT-ND" H 3450 3250 60  0001 C CNN "Digikey#"
	1    3450 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2300 4500 2400
Wire Wire Line
	4500 2350 4700 2350
Connection ~ 4500 2350
Wire Wire Line
	4500 2700 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	4250 2950 4250 2900
Connection ~ 4250 2900
Wire Wire Line
	6100 4600 6100 4450
NoConn ~ 6000 4450
$Comp
L PF_apiner-rescue:+3.3V-OBDII_IoT1 #PWR0131
U 1 1 5BE1DF37
P 8300 3300
F 0 "#PWR0131" H 8300 3390 20  0001 C CNN
F 1 "+3.3V" H 8296 3428 30  0000 C CNN
F 2 "" H 8300 3300 60  0000 C CNN
F 3 "" H 8300 3300 60  0000 C CNN
	1    8300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3300 8300 3400
$Comp
L PF_apiner-rescue:R-OBDII_IoT1 R54
U 1 1 5BE20C64
P 8300 3550
F 0 "R54" V 8350 3350 50  0000 C CNN
F 1 "10K" V 8300 3550 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 8230 3550 50  0001 C CNN
F 3 "" H 8300 3550 50  0000 C CNN
F 4 "Yageo" H 8300 3550 60  0001 C CNN "Manf"
F 5 "RES SMD 10K OHM 5% 1/16W 0402" H 8300 3550 60  0001 C CNN "Desc"
F 6 "RC0402JR-0710KL" H 8300 3550 60  0001 C CNN "Manf#"
F 7 "311-10KJRCT-ND" H 8300 3550 60  0001 C CNN "Digikey#"
	1    8300 3550
	-1   0    0    1   
$EndComp
Text Label 6650 3850 0    50   ~ 0
BOOT
Wire Wire Line
	6550 3850 6650 3850
Wire Wire Line
	8050 3750 8650 3750
Wire Wire Line
	8200 3750 8200 3850
Connection ~ 8300 3750
Text Label 8050 3750 2    50   ~ 0
BOOT
Connection ~ 8200 3750
NoConn ~ 6550 3450
Wire Wire Line
	6550 3050 7000 3050
NoConn ~ 4700 3400
Wire Wire Line
	6550 3550 7050 3550
NoConn ~ 4700 3500
$Comp
L C C34
U 1 1 5D48B20D
P 8650 4100
F 0 "C34" V 8550 4050 50  0000 L CNN
F 1 "0.1uF" V 8750 4000 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 8688 3950 50  0001 C CNN
F 3 "" H 8650 4100 50  0000 C CNN
F 4 "CAP CER 0.1UF 10V X5R 0402" H 8650 4100 60  0001 C CNN "Desc"
F 5 "Yageo" H 8650 4100 60  0001 C CNN "Manf"
F 6 "CC0402KRX5R6BB104" H 8650 4100 60  0001 C CNN "Manf#"
F 7 "311-1336-1-ND" H 8650 4100 60  0001 C CNN "Digikey#"
	1    8650 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 3750 8650 3950
Wire Wire Line
	8650 4400 8650 4250
Connection ~ 8300 4400
$Comp
L R R55
U 1 1 5D491F3F
P 3950 4900
F 0 "R55" V 4030 4900 50  0000 C CNN
F 1 "100" V 3950 4900 50  0000 C CNN
F 2 "chip_rlc:r_0402" V 3880 4900 50  0001 C CNN
F 3 "" H 3950 4900 50  0000 C CNN
F 4 "RES SMD 100 OHM 5% 1/16W 0402" H 3950 4900 60  0001 C CNN "Desc"
F 5 "Yageo" H 3950 4900 60  0001 C CNN "Manf"
F 6 "RC0402JR-07100RL" H 3950 4900 60  0001 C CNN "Manf#"
F 7 "311-100JRCT-ND" H 3950 4900 60  0001 C CNN "Digikey#"
	1    3950 4900
	-1   0    0    1   
$EndComp
$Comp
L LED DS1
U 1 1 5D491FC2
P 3950 5250
F 0 "DS1" H 3900 5375 50  0000 L CNN
F 1 "LED" H 3900 5150 50  0000 L CNN
F 2 "misc:LED-0603" V 3950 5250 50  0001 C CNN
F 3 "" V 3950 5250 50  0000 C CNN
F 4 "Rohm Semiconductor" H 3950 5250 60  0001 C CNN "Manf"
F 5 "SML-D12U1WT86" H 3950 5250 60  0001 C CNN "Manf#"
F 6 "SML-D12U1WT86CT-ND" H 3950 5250 60  0001 C CNN "Digikey#"
	1    3950 5250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0132
U 1 1 5D492137
P 3950 5450
F 0 "#PWR0132" H 3950 5200 50  0001 C CNN
F 1 "GND" H 3955 5277 50  0001 C CNN
F 2 "" H 3950 5450 50  0000 C CNN
F 3 "" H 3950 5450 50  0000 C CNN
	1    3950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5450 3950 5350
Wire Wire Line
	3950 5150 3950 5050
Wire Wire Line
	3950 4650 3950 4750
Text Label 4500 3900 2    60   ~ 0
Led_Status
Wire Wire Line
	4500 3900 4700 3900
Text Label 3950 4650 0    60   ~ 0
Led_Status
$EndSCHEMATC
