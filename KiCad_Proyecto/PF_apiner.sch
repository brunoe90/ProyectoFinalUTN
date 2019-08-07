EESchema Schematic File Version 4
LIBS:PF_apiner-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5450 1500 500  250 
U 582F2211
F0 "Power_Supplies" 40
F1 "Power_Supplies.sch" 40
$EndSheet
$Sheet
S 6650 1850 550  200 
U 582F2238
F0 "Power_CRTL" 40
F1 "Power_CRTL.sch" 40
F2 "PWR_SAVE" I L 6650 1950 40 
$EndSheet
$Sheet
S 6650 1500 550  200 
U 582F21C5
F0 "Voltage_Sense" 40
F1 "Voltage_Sense.sch" 40
F2 "ANALOG_IN" O L 6650 1600 40 
$EndSheet
$Sheet
S 2900 3100 900  600 
U 582F225F
F0 "ISO_Transceiver" 40
F1 "ISO_Transceiver.sch" 40
F2 "ISO_K_TX" I R 3800 3500 40 
F3 "ISO_L_TX" I R 3800 3600 40 
F4 "ISO_RX" O R 3800 3400 40 
F5 "L-LINE" B L 2900 3200 40 
F6 "K-LINE" B L 2900 3300 40 
$EndSheet
Text Notes 5600 1700 0    40   ~ 0
POWER\nSUPPLY
Entry Wire Line
	12150 9650 12250 9750
$Comp
L OBDII_IoT:GND #PWR01
U 1 1 58F8F97A
P 1550 4150
F 0 "#PWR01" H 1550 3900 50  0001 C CNN
F 1 "GND" H 1550 4000 50  0001 C CNN
F 2 "" H 1550 4150 50  0000 C CNN
F 3 "" H 1550 4150 50  0000 C CNN
	1    1550 4150
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:CONN_2X16_OBDII J1
U 1 1 58F8F983
P 1250 3350
F 0 "J1" H 1350 2500 50  0000 C CNN
F 1 "OBDII Header" V 1350 3350 50  0000 C CNN
F 2 "conn:YH1012" H 1250 3750 50  0001 C CNN
F 3 "" H 1250 3750 50  0000 C CNN
F 4 "OBDII male 90° connector" H 1250 3350 60  0001 C CNN "Desc"
F 5 "Yeahui" H 1250 3350 60  0001 C CNN "Manf"
F 6 "YH1012" H 1250 3350 60  0001 C CNN "Manf#"
	1    1250 3350
	-1   0    0    1   
$EndComp
NoConn ~ 1450 2900
NoConn ~ 1450 3000
NoConn ~ 1450 3300
Text Label 1650 3600 0    40   ~ 0
HS_CAN_P
Text Label 1650 2800 0    40   ~ 0
HS_CAN_N
Text Label 1650 3100 0    40   ~ 0
MS_CAN_N
Text Label 1650 3900 0    40   ~ 0
MS_CAN_P
Text Label 1650 4100 0    40   ~ 0
SW_CAN
Text Label 1650 3500 0    40   ~ 0
K-LINE
Text Label 1650 2700 0    40   ~ 0
L-LINE
Text Label 1650 4000 0    40   ~ 0
J1850_BUS+
Text Label 1650 3200 0    40   ~ 0
J1850_BUS-
Text Notes 1150 4450 0    100  ~ 20
OBD II
$Sheet
S 2900 3950 900  1100
U 582F23A6
F0 "CAN_Transceiver" 40
F1 "CAN_Transceiver.sch" 40
F2 "HS_CAN_TX" I R 3800 4050 40 
F3 "HS_CAN_RX" O R 3800 4150 40 
F4 "MS_CAN_HI" B L 2900 4300 40 
F5 "MS_CAN_LO" B L 2900 4400 40 
F6 "HS_CAN_HI" B L 2900 4050 40 
F7 "HS_CAN_LO" B L 2900 4150 40 
F8 "SW_CAN" B L 2900 4550 40 
F9 "MS_CAN_TX" I R 3800 4300 40 
F10 "MS_CAN_RX" O R 3800 4400 40 
F11 "SW_CAN_TX" I R 3800 4550 40 
F12 "SW_CAN_RX" O R 3800 4650 40 
F13 "SW_CAN_MODE0" I R 3800 4750 40 
F14 "SW_CAN_MODE1" I R 3800 4850 40 
F15 "SW_CAN_LOAD" I R 3800 4950 40 
$EndSheet
$Sheet
S 2900 1850 900  900 
U 582F23CD
F0 "J1850_Transceiver" 40
F1 "J1850_Transceiver.sch" 40
F2 "PWM_RX" O R 3800 2350 40 
F3 "J1850_BUS+_TX" I R 3800 1950 40 
F4 "J1850_BUS-_TX" I R 3800 2050 40 
F5 "J1850_BUS+_VH" I R 3800 2150 40 
F6 "VPW_RX" O R 3800 2450 40 
F7 "J1850_BUS+" B L 2900 2550 40 
F8 "J1850_BUS-" B L 2900 2650 40 
$EndSheet
$Sheet
S 5100 2400 1200 2000
U 58340E0B
F0 "OBD_UART_Interface" 40
F1 "OBD_UART_Interface.sch" 40
F2 "ANALOG_IN" I R 6300 2500 40 
F3 "PWR_SAVE" O R 6300 2600 40 
F4 "STN_RESET" I R 6300 2800 40 
F5 "STN_SLEEP" I R 6300 2900 40 
F6 "UART_TX" O R 6300 3050 40 
F7 "UART_RX" I R 6300 3150 40 
F8 "PWM_RX" I L 5100 2800 40 
F9 "VPW_RX" I L 5100 2900 40 
F10 "J1850_BUS-_TX" O L 5100 2600 40 
F11 "J1850_BUS+_TX" O L 5100 2500 40 
F12 "J1850_BUS+_VH" O L 5100 2700 40 
F13 "ISO_K_TX" O L 5100 3150 40 
F14 "ISO_L_TX" O L 5100 3250 40 
F15 "ISO_RX" I L 5100 3050 40 
F16 "HS_CAN_TX" O L 5100 3400 40 
F17 "HS_CAN_RX" I L 5100 3500 40 
F18 "MS_CAN_TX" O L 5100 3600 40 
F19 "MS_CAN_RX" I L 5100 3700 40 
F20 "SW_CAN_TX" O L 5100 3850 40 
F21 "SW_CAN_RX" I L 5100 3950 40 
F22 "SW_CAN_MODE0" O L 5100 4050 40 
F23 "SW_CAN_MODE1" O L 5100 4150 40 
F24 "SW_CAN_LOAD" O L 5100 4250 40 
$EndSheet
$Comp
L OBDII_IoT:VIN #PWR02
U 1 1 58F9B79D
P 1550 2550
F 0 "#PWR02" H -4850 540 20  0001 C CNN
F 1 "VIN" H 1550 2650 30  0000 C CNN
F 2 "" H -4850 450 60  0000 C CNN
F 3 "" H -4850 450 60  0000 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
NoConn ~ 1450 3400
$Sheet
S 7050 2400 1200 2250
U 58A74A6E
F0 "MicroM4" 40
F1 "MicroM4.sch" 40
F2 "UART0_TX" O R 8250 2700 50 
F3 "UART1_TX" O L 7050 3150 50 
F4 "UART0_RX" I R 8250 2600 50 
F5 "UART1_RX" I L 7050 3050 50 
F6 "STN_SLEEP" O L 7050 2900 50 
F7 "STN_RESET" O L 7050 2800 50 
F8 "PWR_SAVE" I L 7050 2600 50 
F9 "RESET" B R 8250 2900 50 
$EndSheet
Text Notes 6700 2250 0    50   ~ 0
El UART0 va al USB, el resto hay que configurarlos
$Comp
L OBDII_IoT:C C?
U 1 1 5B8838EA
P 10000 4600
AR Path="/582F2211/5B8838EA" Ref="C?"  Part="1" 
AR Path="/5B8838EA" Ref="C35"  Part="1" 
F 0 "C35" V 9900 4550 50  0000 L CNN
F 1 "0.1uF" V 10100 4500 50  0000 L CNN
F 2 "chip_rlc:c_0402" H 10038 4450 50  0001 C CNN
F 3 "" H 10000 4600 50  0000 C CNN
F 4 "CAP CER 0.1UF 10V X5R 0402" H 10000 4600 60  0001 C CNN "Desc"
F 5 "Yageo" H 10000 4600 60  0001 C CNN "Manf"
F 6 "CC0402KRX5R6BB104" H 10000 4600 60  0001 C CNN "Manf#"
F 7 "311-1336-1-ND" H 10000 4600 60  0001 C CNN "Digikey#"
	1    10000 4600
	-1   0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR?
U 1 1 5B883919
P 10000 4850
AR Path="/582F2211/5B883919" Ref="#PWR?"  Part="1" 
AR Path="/5B883919" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 10000 4600 50  0001 C CNN
F 1 "GND" H 10000 4700 50  0001 C CNN
F 2 "" H 10000 4850 50  0000 C CNN
F 3 "" H 10000 4850 50  0000 C CNN
	1    10000 4850
	-1   0    0    -1  
$EndComp
$Comp
L OBDII_IoT:+5V_USB #U04
U 1 1 5B88F65F
P 9250 2300
F 0 "#U04" H 9250 2450 50  0001 C CNN
F 1 "+5V_USB" H 9050 2450 30  0000 L CNN
F 2 "" H 9250 2300 50  0001 C CNN
F 3 "" H 9250 2300 50  0001 C CNN
	1    9250 2300
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:+5V #PWR?
U 1 1 5B8A5F5E
P 10000 4250
AR Path="/5B89C1C4/5B8A5F5E" Ref="#PWR?"  Part="1" 
AR Path="/5B8A5F5E" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 10000 4340 20  0001 C CNN
F 1 "+5V" H 10000 4340 30  0000 C CNN
F 2 "" H 10000 4250 60  0000 C CNN
F 3 "" H 10000 4250 60  0000 C CNN
	1    10000 4250
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:+5V_USB U?
U 1 1 5B8A5F68
P 10650 4250
AR Path="/5B89C1C4/5B8A5F68" Ref="U?"  Part="1" 
AR Path="/5B8A5F68" Ref="#U06"  Part="1" 
F 0 "#U06" H 10650 4400 50  0001 C CNN
F 1 "+5V_USB" H 10697 4279 30  0000 L CNN
F 2 "" H 10650 4250 50  0001 C CNN
F 3 "" H 10650 4250 50  0001 C CNN
	1    10650 4250
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:GND #PWR?
U 1 1 5B8BA0D1
P 8900 3050
AR Path="/582F2211/5B8BA0D1" Ref="#PWR?"  Part="1" 
AR Path="/5B8BA0D1" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 8900 2800 50  0001 C CNN
F 1 "GND" H 8900 2900 50  0001 C CNN
F 2 "" H 8900 3050 50  0000 C CNN
F 3 "" H 8900 3050 50  0000 C CNN
	1    8900 3050
	-1   0    0    -1  
$EndComp
$Comp
L OBDII_IoT:D_Schot D?
U 1 1 5B8CB262
P 10350 4350
AR Path="/5B89C1C4/5B8CB262" Ref="D?"  Part="1" 
AR Path="/5B8CB262" Ref="D12"  Part="1" 
F 0 "D12" H 10300 4430 50  0000 L CNN
F 1 "MBR0520" H 10230 4250 40  0000 L CNN
F 2 "to-sod-sot:SOD-123" V 10350 4350 50  0001 C CNN
F 3 "" V 10350 4350 50  0000 C CNN
F 4 "DIODE SCHOTTKY 20V 500MA SOD123" H 10350 4350 50  0001 C CNN "Desc"
F 5 "ON Semiconductor" H 10350 4350 50  0001 C CNN "Manf"
F 6 "MBR0520LT1G" H 10350 4350 50  0001 C CNN "Manf#"
F 7 "MBR0520LT1GOSCT-ND" H 10350 4350 50  0001 C CNN "Digikey#"
	1    10350 4350
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:PWR_FLAG #FLG08
U 1 1 5BA598FF
P 9350 2200
F 0 "#FLG08" H 9350 2295 50  0001 C CNN
F 1 "PWR_FLAG" H 9350 2380 40  0000 C CNN
F 2 "" H 9350 2200 50  0000 C CNN
F 3 "" H 9350 2200 50  0000 C CNN
	1    9350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2600 1550 2600
Wire Wire Line
	1550 2600 1550 2550
Wire Wire Line
	1450 3800 1550 3800
Wire Wire Line
	1550 3700 1550 3800
Wire Wire Line
	1550 3700 1450 3700
Connection ~ 1550 3800
Wire Wire Line
	1450 3600 2700 3600
Wire Wire Line
	1450 2800 2600 2800
Wire Wire Line
	1450 3900 2500 3900
Wire Wire Line
	1450 3100 2400 3100
Wire Wire Line
	1450 4100 2300 4100
Wire Wire Line
	1450 2700 2700 2700
Wire Wire Line
	1450 3500 2700 3500
Wire Wire Line
	2200 2550 2900 2550
Wire Wire Line
	2300 2650 2900 2650
Wire Wire Line
	2700 2700 2700 3200
Wire Wire Line
	2700 3200 2900 3200
Wire Wire Line
	2700 3500 2700 3300
Wire Wire Line
	2700 3300 2900 3300
Wire Wire Line
	2600 2800 2600 4150
Wire Wire Line
	2600 4150 2900 4150
Wire Wire Line
	2700 3600 2700 4050
Wire Wire Line
	2700 4050 2900 4050
Wire Wire Line
	2400 3100 2400 4400
Wire Wire Line
	2400 4400 2900 4400
Wire Wire Line
	2500 3900 2500 4300
Wire Wire Line
	2500 4300 2900 4300
Wire Wire Line
	2300 4100 2300 4550
Wire Wire Line
	2300 4550 2900 4550
Wire Wire Line
	1450 4000 2200 4000
Wire Wire Line
	2200 4000 2200 2550
Wire Wire Line
	1450 3200 2300 3200
Wire Wire Line
	2300 3200 2300 2650
Wire Wire Line
	3800 1950 4300 1950
Wire Wire Line
	4300 1950 4300 2500
Wire Wire Line
	4300 2500 5100 2500
Wire Wire Line
	3800 2050 4200 2050
Wire Wire Line
	4200 2050 4200 2600
Wire Wire Line
	4200 2600 5100 2600
Wire Wire Line
	3800 2150 4100 2150
Wire Wire Line
	4100 2150 4100 2700
Wire Wire Line
	4100 2700 5100 2700
Wire Wire Line
	3800 2350 4000 2350
Wire Wire Line
	4000 2350 4000 2800
Wire Wire Line
	4000 2800 5100 2800
Wire Wire Line
	3800 2450 3900 2450
Wire Wire Line
	3900 2450 3900 2900
Wire Wire Line
	3900 2900 5100 2900
Wire Wire Line
	3800 3400 3900 3400
Wire Wire Line
	3900 3400 3900 3050
Wire Wire Line
	3900 3050 5100 3050
Wire Wire Line
	3800 3500 4000 3500
Wire Wire Line
	4000 3500 4000 3150
Wire Wire Line
	4000 3150 5100 3150
Wire Wire Line
	3800 3600 4100 3600
Wire Wire Line
	4100 3600 4100 3250
Wire Wire Line
	4100 3250 5100 3250
Wire Wire Line
	3800 4050 4200 4050
Wire Wire Line
	4200 4050 4200 3400
Wire Wire Line
	4200 3400 5100 3400
Wire Wire Line
	3800 4150 4300 4150
Wire Wire Line
	4300 4150 4300 3500
Wire Wire Line
	4300 3500 5100 3500
Wire Wire Line
	3800 4300 4400 4300
Wire Wire Line
	4400 4300 4400 3600
Wire Wire Line
	4400 3600 5100 3600
Wire Wire Line
	3800 4400 4500 4400
Wire Wire Line
	4500 4400 4500 3700
Wire Wire Line
	4500 3700 5100 3700
Wire Wire Line
	3800 4550 4600 4550
Wire Wire Line
	4600 4550 4600 3850
Wire Wire Line
	4600 3850 5100 3850
Wire Wire Line
	3800 4650 4700 4650
Wire Wire Line
	4700 4650 4700 3950
Wire Wire Line
	4700 3950 5100 3950
Wire Wire Line
	3800 4750 4800 4750
Wire Wire Line
	4800 4750 4800 4050
Wire Wire Line
	4800 4050 5100 4050
Wire Wire Line
	3800 4850 4900 4850
Wire Wire Line
	4900 4850 4900 4150
Wire Wire Line
	4900 4150 5100 4150
Wire Wire Line
	3800 4950 5000 4950
Wire Wire Line
	5000 4950 5000 4250
Wire Wire Line
	5000 4250 5100 4250
Wire Wire Line
	6650 1600 6450 1600
Wire Wire Line
	6450 1600 6450 2500
Wire Wire Line
	6450 2500 6300 2500
Wire Wire Line
	6300 2600 6550 2600
Wire Wire Line
	6550 2600 6550 1950
Wire Wire Line
	6550 1950 6650 1950
Connection ~ 6550 2600
Wire Wire Line
	6300 2800 7050 2800
Wire Wire Line
	6300 2900 7050 2900
Wire Wire Line
	6300 3050 7050 3050
Wire Wire Line
	6300 3150 7050 3150
Wire Wire Line
	10000 4250 10000 4350
Wire Wire Line
	10000 4750 10000 4850
Wire Wire Line
	9250 2300 9250 2400
Wire Wire Line
	9250 2400 9350 2400
Wire Wire Line
	10450 4350 10650 4350
Wire Wire Line
	10650 4350 10650 4250
Connection ~ 10000 4350
Wire Wire Line
	8900 2900 9350 2900
Wire Wire Line
	8900 2900 8900 3050
Wire Wire Line
	8550 2800 9350 2800
Wire Wire Line
	8550 2800 8550 2900
Wire Wire Line
	8550 2900 8250 2900
Wire Wire Line
	9350 2200 9350 2400
$Comp
L Connector:Conn_01x05 J2
U 1 1 5BCA1F49
P 9550 2700
F 0 "J2" H 9550 3000 50  0000 C CNN
F 1 "Conn_01x05" H 9550 2400 50  0000 C CNN
F 2 "conn:PIN_ARRAY_5x1_1.27_SMD" H 9550 2700 50  0001 C CNN
F 3 "" H 9550 2700 50  0001 C CNN
F 4 "CONN HDR 1.27MM SMT AU 5POS" H 9550 2700 60  0001 C CNN "Desc"
F 5 "Harwin Inc." H 9550 2700 60  0001 C CNN "Manf"
F 6 "M50-3630542" H 9550 2700 60  0001 C CNN "Manf#"
F 7 "952-3609-ND" H 9550 2700 60  0001 C CNN "Digikey#"
	1    9550 2700
	1    0    0    -1  
$EndComp
Connection ~ 9350 2400
Text Notes 5400 1350 0    60   ~ 0
agrandar d1
Wire Wire Line
	10000 4350 10250 4350
$Comp
L OBDII_IoT:PCB_HOLE H4
U 1 1 5BDBC2D4
P 10050 3650
F 0 "H4" H 9900 3650 60  0000 C CNN
F 1 "PCB_HOLE" H 10350 3650 60  0000 C CNN
F 2 "misc:MountingHole_3mm" H 9900 3700 60  0001 C CNN
F 3 "PCB HOLE" H 10000 3800 60  0001 C CNN
	1    10050 3650
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:PCB_HOLE H3
U 1 1 5BDBD6A0
P 10050 3500
F 0 "H3" H 9900 3500 60  0000 C CNN
F 1 "PCB_HOLE" H 10350 3500 60  0000 C CNN
F 2 "misc:MountingHole_3mm" H 9900 3550 60  0001 C CNN
F 3 "PCB HOLE" H 10000 3650 60  0001 C CNN
	1    10050 3500
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:PCB_HOLE H2
U 1 1 5BDBD82A
P 10050 3350
F 0 "H2" H 9900 3350 60  0000 C CNN
F 1 "PCB_HOLE" H 10350 3350 60  0000 C CNN
F 2 "misc:MountingHole_3mm" H 9900 3400 60  0001 C CNN
F 3 "PCB HOLE" H 10000 3500 60  0001 C CNN
	1    10050 3350
	1    0    0    -1  
$EndComp
$Comp
L OBDII_IoT:PCB_HOLE H1
U 1 1 5BDBD9BA
P 10050 3200
F 0 "H1" H 9900 3200 60  0000 C CNN
F 1 "PCB_HOLE" H 10350 3200 60  0000 C CNN
F 2 "misc:MountingHole_3mm" H 9900 3250 60  0001 C CNN
F 3 "PCB HOLE" H 10000 3350 60  0001 C CNN
	1    10050 3200
	1    0    0    -1  
$EndComp
NoConn ~ 10050 3200
NoConn ~ 10050 3350
NoConn ~ 10050 3500
NoConn ~ 10050 3650
Wire Wire Line
	8250 2600 9350 2600
Wire Wire Line
	9350 2700 8250 2700
Wire Wire Line
	1550 3800 1550 4150
Wire Wire Line
	6550 2600 7050 2600
Wire Wire Line
	10000 4350 10000 4450
Wire Wire Line
	9350 2400 9350 2500
$EndSCHEMATC
