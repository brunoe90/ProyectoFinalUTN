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
Sheet 7 8
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
L stn2220 stn1
U 1 1 5AFECB58
P 5450 3450
F 0 "stn1" H 5450 1700 60  0000 C CNN
F 1 "stn2120" H 5450 4650 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-44-1EP_8x8mm_Pitch0.65mm" H 7700 2450 60  0001 C CNN
F 3 "" H 7700 2450 60  0001 C CNN
	1    5450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4350 4700 5050
Connection ~ 4700 4450
Connection ~ 4700 4550
Connection ~ 4700 4650
Connection ~ 4700 4750
Connection ~ 4700 4850
Connection ~ 4700 4950
$Comp
L GND #PWR079
U 1 1 5AFECC5B
P 4700 5050
F 0 "#PWR079" H 4700 4800 50  0001 C CNN
F 1 "GND" H 4700 4900 50  0000 C CNN
F 2 "" H 4700 5050 50  0001 C CNN
F 3 "" H 4700 5050 50  0001 C CNN
	1    4700 5050
	1    0    0    -1  
$EndComp
Text Notes 4600 5100 1    60   ~ 0
DATASHEET \n5.11 -> TABLA 3
Wire Wire Line
	4700 3800 4700 4200
Connection ~ 4700 3900
Connection ~ 4700 4000
Connection ~ 4700 4100
$Comp
L GND #PWR080
U 1 1 5AFEDC33
P 4700 4200
F 0 "#PWR080" H 4700 3950 50  0001 C CNN
F 1 "GND" H 4700 4050 50  0000 C CNN
F 2 "" H 4700 4200 50  0001 C CNN
F 3 "" H 4700 4200 50  0001 C CNN
	1    4700 4200
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 5AFEDC52
P 1300 4250
F 0 "R30" V 1380 4250 50  0000 C CNN
F 1 "62K 1%" V 1200 4250 50  0000 C CNN
F 2 "" V 1230 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 5AFEDCA1
P 1300 4800
F 0 "R31" V 1380 4800 50  0000 C CNN
F 1 "10K 1%" V 1200 4800 50  0000 C CNN
F 2 "" V 1230 4800 50  0001 C CNN
F 3 "" H 1300 4800 50  0001 C CNN
	1    1300 4800
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5AFEDCD9
P 850 4800
F 0 "C14" H 875 4900 50  0000 L CNN
F 1 "0.1u" H 875 4700 50  0000 L CNN
F 2 "" H 888 4650 50  0001 C CNN
F 3 "" H 850 4800 50  0001 C CNN
	1    850  4800
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D12
U 1 1 5AFEDD00
P 1800 4250
F 0 "D12" H 1800 4350 50  0000 C CNN
F 1 "BAT46" H 1800 4150 50  0000 C CNN
F 2 "" H 1800 4250 50  0001 C CNN
F 3 "" H 1800 4250 50  0001 C CNN
	1    1800 4250
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D13
U 1 1 5AFEDDBC
P 1800 4800
F 0 "D13" H 1800 4900 50  0000 C CNN
F 1 "BAT46" H 1800 4700 50  0000 C CNN
F 2 "" H 1800 4800 50  0001 C CNN
F 3 "" H 1800 4800 50  0001 C CNN
	1    1800 4800
	0    -1   -1   0   
$EndComp
Text HLabel 1300 3950 0    60   UnSpc ~ 0
V_BAT
$Comp
L GND #PWR081
U 1 1 5AFEDEED
P 1500 5100
F 0 "#PWR081" H 1500 4850 50  0001 C CNN
F 1 "GND" H 1500 4950 50  0000 C CNN
F 2 "" H 1500 5100 50  0001 C CNN
F 3 "" H 1500 5100 50  0001 C CNN
	1    1500 5100
	1    0    0    -1  
$EndComp
Text Label 2100 4500 0    60   ~ 0
ANALOG_IN
Text Label 4500 3050 2    60   ~ 0
ANALOG_IN
Wire Wire Line
	1300 3950 1300 4100
Wire Wire Line
	1300 4400 1300 4650
Wire Wire Line
	850  4500 2100 4500
Connection ~ 1300 4500
Wire Wire Line
	1800 4400 1800 4650
Connection ~ 1800 4500
Wire Wire Line
	850  5050 1800 5050
Wire Wire Line
	1800 5050 1800 4950
Wire Wire Line
	1300 4950 1300 5050
Connection ~ 1300 5050
Wire Wire Line
	1500 5100 1500 5050
Connection ~ 1500 5050
$Comp
L +3.3V #PWR082
U 1 1 5AFEE0D8
P 1800 4000
F 0 "#PWR082" H 1800 3850 50  0001 C CNN
F 1 "+3.3V" H 1800 4140 50  0000 C CNN
F 2 "" H 1800 4000 50  0001 C CNN
F 3 "" H 1800 4000 50  0001 C CNN
	1    1800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4000 1800 4100
Wire Wire Line
	850  4650 850  4500
Wire Wire Line
	850  4950 850  5050
Wire Wire Line
	4700 3050 4500 3050
Text HLabel 7950 3100 2    60   Output ~ 0
HS_CAN_TX
Text HLabel 7950 3300 2    60   Input ~ 0
HS_CAN_RX
Text HLabel 7950 3200 2    60   Output ~ 0
MS_CAN_TX
Text HLabel 7950 3400 2    60   Input ~ 0
MS_CAN_RX
Text HLabel 7950 4450 2    60   Output ~ 0
SW_CAN_TX
Text HLabel 7950 4550 2    60   Input ~ 0
SW_CAN_RX
Text HLabel 7950 4800 2    60   Output ~ 0
SW_CAN_MODE0
Text HLabel 7950 4700 2    60   Output ~ 0
SW_CAN_MODE1
Text HLabel 6350 4900 2    60   Output ~ 0
SW_CAN_LOAD
Text HLabel 6350 4200 2    60   Output ~ 0
ISO-K_TX
Text HLabel 6350 4300 2    60   Output ~ 0
ISO-L_TX
Text HLabel 6350 4100 2    60   Input ~ 0
ISO_RX
Text HLabel 6350 3750 2    60   Output ~ 0
J1850_BUS+_TX
Text HLabel 6350 3850 2    60   Output ~ 0
J1850_BUS+_VH
Text HLabel 6350 3950 2    60   Output ~ 0
J1850_BUS-_TX
Text HLabel 6350 3550 2    60   Input ~ 0
VPW_RX
Text HLabel 6350 3650 2    60   Input ~ 0
PWM_RX
Wire Wire Line
	4700 2300 4700 2650
$Comp
L +3.3V #PWR083
U 1 1 5AFEEB48
P 4700 2300
F 0 "#PWR083" H 4700 2150 50  0001 C CNN
F 1 "+3.3V" H 4700 2440 50  0000 C CNN
F 2 "" H 4700 2300 50  0001 C CNN
F 3 "" H 4700 2300 50  0001 C CNN
	1    4700 2300
	1    0    0    -1  
$EndComp
Connection ~ 4700 2550
$Comp
L +3.3V #PWR084
U 1 1 5AFEEBBD
P 3200 2400
F 0 "#PWR084" H 3200 2250 50  0001 C CNN
F 1 "+3.3V" H 3200 2540 50  0000 C CNN
F 2 "" H 3200 2400 50  0001 C CNN
F 3 "" H 3200 2400 50  0001 C CNN
	1    3200 2400
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5AFEEC2A
P 2950 2650
F 0 "C15" H 2975 2750 50  0000 L CNN
F 1 "1u" H 2975 2550 50  0000 L CNN
F 2 "" H 2988 2500 50  0001 C CNN
F 3 "" H 2950 2650 50  0001 C CNN
	1    2950 2650
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5AFEEC99
P 3200 2650
F 0 "C16" H 3225 2750 50  0000 L CNN
F 1 "1u" H 3225 2550 50  0000 L CNN
F 2 "" H 3238 2500 50  0001 C CNN
F 3 "" H 3200 2650 50  0001 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 5AFEECCB
P 3450 2650
F 0 "C17" H 3475 2750 50  0000 L CNN
F 1 "1u" H 3475 2550 50  0000 L CNN
F 2 "" H 3488 2500 50  0001 C CNN
F 3 "" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR085
U 1 1 5AFEED91
P 3200 2900
F 0 "#PWR085" H 3200 2650 50  0001 C CNN
F 1 "GND" H 3200 2750 50  0000 C CNN
F 2 "" H 3200 2900 50  0001 C CNN
F 3 "" H 3200 2900 50  0001 C CNN
	1    3200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2500 3450 2500
Connection ~ 3200 2500
Wire Wire Line
	2950 2800 3450 2800
Connection ~ 3200 2800
Wire Wire Line
	3200 2800 3200 2900
Wire Wire Line
	3200 2500 3200 2400
Text Notes 2900 2200 0    60   ~ 0
CADA UNO CERCA DE\nVDD Y AVDD
$Comp
L +3.3V #PWR086
U 1 1 5AFEF9F2
P 6500 1900
F 0 "#PWR086" H 6500 1750 50  0001 C CNN
F 1 "+3.3V" H 6500 2040 50  0000 C CNN
F 2 "" H 6500 1900 50  0001 C CNN
F 3 "" H 6500 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
Text HLabel 6700 2450 2    60   Output ~ 0
UART_STN_TX
Text HLabel 6700 2550 2    60   Input ~ 0
UART_STN_RX
Wire Wire Line
	6200 2450 6700 2450
Wire Wire Line
	6200 2550 6700 2550
$Comp
L R R41
U 1 1 5AFF015B
P 7550 2800
F 0 "R41" V 7630 2800 50  0000 C CNN
F 1 "100K" V 7550 2800 50  0000 C CNN
F 2 "" V 7480 2800 50  0001 C CNN
F 3 "" H 7550 2800 50  0001 C CNN
	1    7550 2800
	1    0    0    -1  
$EndComp
$Comp
L R R43
U 1 1 5AFF01D0
P 7750 2800
F 0 "R43" V 7830 2800 50  0000 C CNN
F 1 "100K" V 7750 2800 50  0000 C CNN
F 2 "" V 7680 2800 50  0001 C CNN
F 3 "" H 7750 2800 50  0001 C CNN
	1    7750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3100 7950 3100
Wire Wire Line
	6200 3200 7950 3200
$Comp
L +3.3V #PWR087
U 1 1 5AFF0470
P 7450 2550
F 0 "#PWR087" H 7450 2400 50  0001 C CNN
F 1 "+3.3V" H 7450 2690 50  0000 C CNN
F 2 "" H 7450 2550 50  0001 C CNN
F 3 "" H 7450 2550 50  0001 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 5AFF072B
P 7350 2800
F 0 "R39" V 7430 2800 50  0000 C CNN
F 1 "100K" V 7350 2800 50  0000 C CNN
F 2 "" V 7280 2800 50  0001 C CNN
F 3 "" H 7350 2800 50  0001 C CNN
	1    7350 2800
	1    0    0    -1  
$EndComp
$Comp
L R R37
U 1 1 5AFF07B4
P 7150 2800
F 0 "R37" V 7230 2800 50  0000 C CNN
F 1 "100K" V 7150 2800 50  0000 C CNN
F 2 "" V 7080 2800 50  0001 C CNN
F 3 "" H 7150 2800 50  0001 C CNN
	1    7150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2650 7750 2650
Connection ~ 7350 2650
Connection ~ 7550 2650
Wire Wire Line
	7450 2550 7450 2650
Connection ~ 7450 2650
Wire Wire Line
	6200 3300 7950 3300
Wire Wire Line
	6200 3400 7950 3400
Wire Wire Line
	7750 2950 7750 3100
Connection ~ 7750 3100
Wire Wire Line
	7550 2950 7550 3200
Connection ~ 7550 3200
Wire Wire Line
	7350 2950 7350 3300
Connection ~ 7350 3300
Wire Wire Line
	7150 2950 7150 3400
Connection ~ 7150 3400
$Comp
L CP1 C18
U 1 1 5AFF0FC0
P 3550 3350
F 0 "C18" H 3575 3450 50  0000 L CNN
F 1 "10u" V 3700 3200 50  0000 L CNN
F 2 "" H 3550 3350 50  0001 C CNN
F 3 "" H 3550 3350 50  0001 C CNN
	1    3550 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR088
U 1 1 5AFF10BE
P 3550 3550
F 0 "#PWR088" H 3550 3300 50  0001 C CNN
F 1 "GND" H 3550 3400 50  0000 C CNN
F 2 "" H 3550 3550 50  0001 C CNN
F 3 "" H 3550 3550 50  0001 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
$Comp
L R R35
U 1 1 5AFF13CE
P 4550 2650
F 0 "R35" V 4630 2650 50  0000 C CNN
F 1 "100K" V 4550 2650 50  0000 C CNN
F 2 "" V 4480 2650 50  0001 C CNN
F 3 "" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2500 4550 2450
Wire Wire Line
	4550 2800 4700 2800
$Comp
L R R34
U 1 1 5AFF19C5
P 4350 2650
F 0 "R34" V 4430 2650 50  0000 C CNN
F 1 "10K" V 4350 2650 50  0000 C CNN
F 2 "" V 4280 2650 50  0001 C CNN
F 3 "" H 4350 2650 50  0001 C CNN
	1    4350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2500 4350 2450
Wire Wire Line
	4350 2800 4350 2900
Wire Wire Line
	4250 2900 4700 2900
Text HLabel 4250 2900 0    60   Input ~ 0
RESET
Connection ~ 4350 2900
$Comp
L Crystal Y1
U 1 1 5AFF2774
P 4150 3850
F 0 "Y1" H 4150 4000 50  0000 C CNN
F 1 "16MHz" H 4150 3700 50  0000 C CNN
F 2 "" H 4150 3850 50  0001 C CNN
F 3 "" H 4150 3850 50  0001 C CNN
	1    4150 3850
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 5AFF294F
P 3750 4000
F 0 "C19" H 3775 4100 50  0000 L CNN
F 1 "30p" H 3775 3900 50  0000 L CNN
F 2 "" H 3788 3850 50  0001 C CNN
F 3 "" H 3750 4000 50  0001 C CNN
	1    3750 4000
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 5AFF29EC
P 4500 4000
F 0 "C20" H 4525 4100 50  0000 L CNN
F 1 "30p" H 4525 3900 50  0000 L CNN
F 2 "" H 4538 3850 50  0001 C CNN
F 3 "" H 4500 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR089
U 1 1 5AFF2AD6
P 4150 4150
F 0 "#PWR089" H 4150 3900 50  0001 C CNN
F 1 "GND" H 4150 4000 50  0000 C CNN
F 2 "" H 4150 4150 50  0001 C CNN
F 3 "" H 4150 4150 50  0001 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3850 4000 3850
Wire Wire Line
	4300 3850 4500 3850
Wire Wire Line
	4500 3850 4500 3650
Wire Wire Line
	4500 3650 4700 3650
Wire Wire Line
	4700 3550 3750 3550
Wire Wire Line
	3750 3550 3750 3850
Wire Wire Line
	3750 4150 4500 4150
Connection ~ 4150 4150
Wire Wire Line
	6200 3550 6350 3550
Wire Wire Line
	6200 3650 6350 3650
Wire Wire Line
	6350 3750 6200 3750
Wire Wire Line
	6200 3850 6350 3850
Wire Wire Line
	6350 3950 6200 3950
Wire Wire Line
	6200 4100 6350 4100
Wire Wire Line
	6200 4200 6350 4200
Wire Wire Line
	6200 4300 6350 4300
$Comp
L +5V #PWR090
U 1 1 5AFF3AE9
P 7450 3950
F 0 "#PWR090" H 7450 3800 50  0001 C CNN
F 1 "+5V" H 7450 4090 50  0000 C CNN
F 2 "" H 7450 3950 50  0001 C CNN
F 3 "" H 7450 3950 50  0001 C CNN
	1    7450 3950
	1    0    0    -1  
$EndComp
$Comp
L R R42
U 1 1 5AFF3D74
P 7650 4200
F 0 "R42" V 7730 4200 50  0000 C CNN
F 1 "10K" V 7650 4200 50  0000 C CNN
F 2 "" V 7580 4200 50  0001 C CNN
F 3 "" H 7650 4200 50  0001 C CNN
	1    7650 4200
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 5AFF3ECA
P 7450 4200
F 0 "R40" V 7530 4200 50  0000 C CNN
F 1 "10K" V 7450 4200 50  0000 C CNN
F 2 "" V 7380 4200 50  0001 C CNN
F 3 "" H 7450 4200 50  0001 C CNN
	1    7450 4200
	1    0    0    -1  
$EndComp
$Comp
L R R38
U 1 1 5AFF4012
P 7250 4200
F 0 "R38" V 7330 4200 50  0000 C CNN
F 1 "1.5K" V 7250 4200 50  0000 C CNN
F 2 "" V 7180 4200 50  0001 C CNN
F 3 "" H 7250 4200 50  0001 C CNN
	1    7250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4450 7950 4450
Wire Wire Line
	6200 4700 7950 4700
Wire Wire Line
	6200 4800 7950 4800
Wire Wire Line
	6200 4900 6350 4900
Wire Wire Line
	7250 4050 7650 4050
Connection ~ 7450 4050
Wire Wire Line
	7450 4050 7450 3950
Wire Wire Line
	7250 4350 7250 4450
Connection ~ 7250 4450
Wire Wire Line
	7450 4350 7450 4700
Connection ~ 7450 4700
Wire Wire Line
	7650 4350 7650 4800
Connection ~ 7650 4800
$Comp
L R R36
U 1 1 5AFF6482
P 6500 2100
F 0 "R36" V 6580 2100 50  0000 C CNN
F 1 "100K" V 6500 2100 50  0000 C CNN
F 2 "" V 6430 2100 50  0001 C CNN
F 3 "" H 6500 2100 50  0001 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
Text HLabel 6700 2700 2    60   Input ~ 0
SLEEP
Wire Wire Line
	6200 2700 6700 2700
Wire Wire Line
	6500 2250 6500 2700
Connection ~ 6500 2700
Wire Wire Line
	6500 1900 6500 1950
Text HLabel 6350 2800 2    60   Output ~ 0
PWR_CTRL
Wire Wire Line
	6200 2800 6350 2800
Text Label 4600 3350 2    60   ~ 0
LED_STATUS
Wire Wire Line
	3550 3200 4700 3200
Wire Wire Line
	4600 3350 4700 3350
Wire Wire Line
	3550 3500 3550 3550
Text Label 6350 2950 0    60   ~ 0
LED_HOST
Wire Wire Line
	6200 2950 6350 2950
Text Label 2850 4350 2    60   ~ 0
LED_STATUS
$Comp
L R R32
U 1 1 5AFF7FFA
P 2850 4600
F 0 "R32" V 2930 4600 50  0000 C CNN
F 1 "330" V 2850 4600 50  0000 C CNN
F 2 "" V 2780 4600 50  0001 C CNN
F 3 "" H 2850 4600 50  0001 C CNN
	1    2850 4600
	1    0    0    -1  
$EndComp
$Comp
L LED D14
U 1 1 5AFF825F
P 2850 5000
F 0 "D14" H 2850 5100 50  0000 C CNN
F 1 "STATUS" H 2850 4900 50  0000 C CNN
F 2 "" H 2850 5000 50  0001 C CNN
F 3 "" H 2850 5000 50  0001 C CNN
	1    2850 5000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR091
U 1 1 5AFF83AD
P 2850 5200
F 0 "#PWR091" H 2850 4950 50  0001 C CNN
F 1 "GND" H 2850 5050 50  0000 C CNN
F 2 "" H 2850 5200 50  0001 C CNN
F 3 "" H 2850 5200 50  0001 C CNN
	1    2850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4350 2850 4450
Wire Wire Line
	2850 4750 2850 4850
Wire Wire Line
	2850 5150 2850 5200
Text Label 3250 5500 2    60   ~ 0
LED_HOST
$Comp
L R R33
U 1 1 5AFF8C1D
P 3300 5100
F 0 "R33" V 3380 5100 50  0000 C CNN
F 1 "330" V 3300 5100 50  0000 C CNN
F 2 "" V 3230 5100 50  0001 C CNN
F 3 "" H 3300 5100 50  0001 C CNN
	1    3300 5100
	1    0    0    -1  
$EndComp
$Comp
L LED D15
U 1 1 5AFF8D21
P 3300 4600
F 0 "D15" H 3300 4700 50  0000 C CNN
F 1 "STATUS" H 3300 4500 50  0000 C CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "" H 3300 4600 50  0001 C CNN
	1    3300 4600
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR092
U 1 1 5AFF8EED
P 3300 4350
F 0 "#PWR092" H 3300 4200 50  0001 C CNN
F 1 "+3.3V" H 3300 4490 50  0000 C CNN
F 2 "" H 3300 4350 50  0001 C CNN
F 3 "" H 3300 4350 50  0001 C CNN
	1    3300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4350 3300 4450
Wire Wire Line
	3300 4750 3300 4950
Wire Wire Line
	3250 5500 3300 5500
Wire Wire Line
	3300 5500 3300 5250
Wire Wire Line
	6200 4550 7950 4550
Wire Wire Line
	4350 2450 4700 2450
Connection ~ 4700 2450
Text HLabel 1600 3650 0    60   UnSpc ~ 0
3.3V
Wire Wire Line
	1850 3650 1600 3650
$Comp
L +3.3V #PWR093
U 1 1 5AFEDBC0
P 1850 3650
F 0 "#PWR093" H 1850 3500 50  0001 C CNN
F 1 "+3.3V" H 1850 3790 50  0000 C CNN
F 2 "" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0001 C CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR094
U 1 1 5AFEDBAA
P 1850 3350
F 0 "#PWR094" H 1850 3200 50  0001 C CNN
F 1 "+5V" H 1850 3490 50  0000 C CNN
F 2 "" H 1850 3350 50  0001 C CNN
F 3 "" H 1850 3350 50  0001 C CNN
	1    1850 3350
	1    0    0    -1  
$EndComp
Text HLabel 1600 3350 0    60   UnSpc ~ 0
5V
Wire Wire Line
	1600 3350 1850 3350
Text HLabel 1600 3100 0    60   UnSpc ~ 0
VCC_SAFE
Wire Wire Line
	1600 3100 1850 3100
$Comp
L VCC #PWR095
U 1 1 5AFEDB94
P 1850 3100
F 0 "#PWR095" H 1850 2950 50  0001 C CNN
F 1 "VCC" H 1850 3250 50  0000 C CNN
F 2 "" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
Connection ~ 4550 2450
$EndSCHEMATC
