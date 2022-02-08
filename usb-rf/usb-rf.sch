EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1700 1350 2200 1350
Wire Wire Line
	1700 1300 1700 1350
Wire Wire Line
	2200 1350 2200 1400
Connection ~ 2200 1350
Wire Wire Line
	2700 1350 2200 1350
Wire Wire Line
	2700 1300 2700 1350
Wire Wire Line
	2200 1300 2200 1350
$Comp
L power:GND #PWR0101
U 1 1 61DE26DC
P 2200 1400
F 0 "#PWR0101" H 2200 1150 50  0001 C CNN
F 1 "GND" H 2205 1227 50  0000 C CNN
F 2 "" H 2200 1400 50  0001 C CNN
F 3 "" H 2200 1400 50  0001 C CNN
	1    2200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1000 650  850 
Wire Wire Line
	900  1000 650  1000
Wire Wire Line
	1400 1000 1100 1000
$Comp
L Device:Fuse_Small F1
U 1 1 61DE0CC5
P 1000 1000
F 0 "F1" H 1000 1185 50  0000 C CNN
F 1 "100mA" H 1000 1094 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 1000 1000 50  0001 C CNN
F 3 "~" H 1000 1000 50  0001 C CNN
	1    1000 1000
	1    0    0    -1  
$EndComp
Connection ~ 1700 1000
Wire Wire Line
	1900 1000 1700 1000
Wire Wire Line
	1700 1000 1600 1000
Wire Wire Line
	1700 1100 1700 1000
Connection ~ 2700 1000
Wire Wire Line
	2800 1000 2800 850 
Wire Wire Line
	2700 1000 2800 1000
Wire Wire Line
	2700 1000 2700 1100
Wire Wire Line
	2500 1000 2700 1000
$Comp
L power:+5V #PWR0102
U 1 1 61DDE4A9
P 650 850
F 0 "#PWR0102" H 650 700 50  0001 C CNN
F 1 "+5V" H 665 1023 50  0000 C CNN
F 2 "" H 650 850 50  0001 C CNN
F 3 "" H 650 850 50  0001 C CNN
	1    650  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 61DDD8E9
P 2800 850
F 0 "#PWR0103" H 2800 700 50  0001 C CNN
F 1 "+3.3V" H 2815 1023 50  0000 C CNN
F 2 "" H 2800 850 50  0001 C CNN
F 3 "" H 2800 850 50  0001 C CNN
	1    2800 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61DD881E
P 2700 1200
F 0 "C2" H 2792 1246 50  0000 L CNN
F 1 "10u" H 2792 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2700 1200 50  0001 C CNN
F 3 "~" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 61DD5D77
P 1700 1200
F 0 "C1" H 1792 1246 50  0000 L CNN
F 1 "10u" H 1792 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1700 1200 50  0001 C CNN
F 3 "~" H 1700 1200 50  0001 C CNN
	1    1700 1200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:XC6206PxxxMR U2
U 1 1 61DD2CCF
P 2200 1000
F 0 "U2" H 2050 1150 50  0000 C CNN
F 1 "XC6206PxxxMR" H 2550 600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2200 1225 50  0001 C CIN
F 3 "https://www.torexsemi.com/file/xc6206/XC6206.pdf" H 2200 1000 50  0001 C CNN
	1    2200 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 61DD1DAD
P 1500 1000
F 0 "FB1" V 1263 1000 50  0000 C CNN
F 1 "100 @ 100MHz" V 1354 1000 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 1430 1000 50  0001 C CNN
F 3 "~" H 1500 1000 50  0001 C CNN
	1    1500 1000
	0    1    1    0   
$EndComp
Wire Notes Line
	2950 600  2950 1650
Wire Notes Line
	2950 1650 550  1650
Wire Notes Line
	550  1650 550  600 
Wire Notes Line
	550  600  2950 600 
Text Notes 550  600  0    50   ~ 0
3V3 Regulator
Text Notes 2200 600  0    50   ~ 0
max. 200mA @ 3V3
Text Notes 550  2150 0    50   ~ 0
1. Limit USB host-side CAP to <= 10 uF to ensure we are\nnot hitting max. in-rush current when device is attached. \n2. STM32 requires 3V3.\n3. No reverse polarity protection as the only power source \ncomes from the USB connector we can assume that the\npolarity will be correct. \n
Text GLabel 1100 3900 0    50   Input ~ 0
NRST
Text GLabel 1100 5000 0    50   Input ~ 0
SPI3_SCK
Text GLabel 1100 5100 0    50   Input ~ 0
SPI3_MISO
Text GLabel 1100 5200 0    50   Input ~ 0
SPI3_MOSI
Text GLabel 1100 5300 0    50   Input ~ 0
SPI3_CSN
Text GLabel 1100 5400 0    50   Input ~ 0
NRF_CE
Text GLabel 2100 5400 2    50   Input ~ 0
NRF_IRQ
Text GLabel 2100 5300 2    50   Input ~ 0
SWCLK
Text GLabel 2100 5200 2    50   Input ~ 0
SWDIO
Text GLabel 2100 5100 2    50   Input ~ 0
USB_D+
Text GLabel 2100 5000 2    50   Input ~ 0
USB_D-
$Comp
L Device:R_Small R1
U 1 1 61E09E1D
P 850 4500
F 0 "R1" H 909 4546 50  0000 L CNN
F 1 "10k" H 909 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 850 4500 50  0001 C CNN
F 3 "~" H 850 4500 50  0001 C CNN
	1    850  4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 61E0A6D5
P 2800 4650
F 0 "R3" H 2859 4696 50  0000 L CNN
F 1 "1k" H 2859 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 4650 50  0001 C CNN
F 3 "~" H 2800 4650 50  0001 C CNN
	1    2800 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61E0DBA3
P 2550 4650
F 0 "R2" H 2609 4696 50  0000 L CNN
F 1 "1k" H 2609 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2550 4650 50  0001 C CNN
F 3 "~" H 2550 4650 50  0001 C CNN
	1    2550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 61E0EE21
P 2550 4350
F 0 "D1" V 2504 4448 50  0000 L CNN
F 1 "GR" V 2595 4448 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2550 4350 50  0001 C CNN
F 3 "~" V 2550 4350 50  0001 C CNN
	1    2550 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 61E10303
P 2800 4350
F 0 "D2" V 2754 4448 50  0000 L CNN
F 1 "YL" V 2845 4448 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2800 4350 50  0001 C CNN
F 3 "~" V 2800 4350 50  0001 C CNN
	1    2800 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61E19305
P 850 4700
F 0 "#PWR0104" H 850 4450 50  0001 C CNN
F 1 "GND" H 855 4527 50  0000 C CNN
F 2 "" H 850 4700 50  0001 C CNN
F 3 "" H 850 4700 50  0001 C CNN
	1    850  4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61E19B55
P 2550 4800
F 0 "#PWR0105" H 2550 4550 50  0001 C CNN
F 1 "GND" H 2555 4627 50  0000 C CNN
F 2 "" H 2550 4800 50  0001 C CNN
F 3 "" H 2550 4800 50  0001 C CNN
	1    2550 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61E1BBF5
P 2800 4800
F 0 "#PWR0106" H 2800 4550 50  0001 C CNN
F 1 "GND" H 2805 4627 50  0000 C CNN
F 2 "" H 2800 4800 50  0001 C CNN
F 3 "" H 2800 4800 50  0001 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4450 2550 4550
Wire Wire Line
	2550 4750 2550 4800
Wire Wire Line
	2800 4800 2800 4750
Wire Wire Line
	2800 4550 2800 4450
Wire Wire Line
	1100 4300 850  4300
Wire Wire Line
	850  4300 850  4400
Wire Wire Line
	850  4600 850  4700
$Comp
L MCU_ST_STM32L4:STM32L432KBUx U1
U 1 1 61DCE97F
P 1600 4600
F 0 "U1" H 1250 5450 50  0000 C CNN
F 1 "STM32L432KBUx" H 2350 3600 50  0000 R BNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 1200 3700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00257205.pdf" H 1600 4600 50  0001 C CNN
	1    1600 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 61E23B0F
P 1700 5750
F 0 "#PWR0107" H 1700 5500 50  0001 C CNN
F 1 "GND" H 1705 5577 50  0000 C CNN
F 2 "" H 1700 5750 50  0001 C CNN
F 3 "" H 1700 5750 50  0001 C CNN
	1    1700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5600 1500 5700
Wire Wire Line
	1500 5700 1600 5700
Wire Wire Line
	1700 5700 1700 5750
Wire Wire Line
	1700 5600 1700 5700
Connection ~ 1700 5700
Wire Wire Line
	1600 5600 1600 5700
Connection ~ 1600 5700
Wire Wire Line
	1600 5700 1700 5700
$Comp
L power:+3.3V #PWR0108
U 1 1 61E260CE
P 1500 3550
F 0 "#PWR0108" H 1500 3400 50  0001 C CNN
F 1 "+3.3V" H 1515 3723 50  0000 C CNN
F 2 "" H 1500 3550 50  0001 C CNN
F 3 "" H 1500 3550 50  0001 C CNN
	1    1500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3700 1500 3600
Wire Wire Line
	1700 3700 1700 3600
Wire Wire Line
	1700 3600 1600 3600
Connection ~ 1500 3600
Wire Wire Line
	1500 3600 1500 3550
Wire Wire Line
	1600 3700 1600 3600
Connection ~ 1600 3600
Wire Wire Line
	1600 3600 1500 3600
NoConn ~ 2100 3900
NoConn ~ 2100 4000
NoConn ~ 2100 4300
NoConn ~ 2100 4400
NoConn ~ 2100 4500
NoConn ~ 2100 4600
NoConn ~ 2100 4700
NoConn ~ 2100 4800
NoConn ~ 2100 4900
NoConn ~ 1100 4500
NoConn ~ 1100 4600
NoConn ~ 1100 4800
NoConn ~ 1100 4900
Wire Wire Line
	2550 4250 2550 4200
Wire Wire Line
	2550 4200 2100 4200
Wire Wire Line
	2100 4100 2800 4100
Wire Wire Line
	2800 4100 2800 4250
$Comp
L Device:C_Small C4
U 1 1 61E45D04
P 1100 3000
F 0 "C4" H 1192 3046 50  0000 L CNN
F 1 "1u" H 1192 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1100 3000 50  0001 C CNN
F 3 "~" H 1100 3000 50  0001 C CNN
	1    1100 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 61E46322
P 1450 3000
F 0 "C5" H 1542 3046 50  0000 L CNN
F 1 "100n" H 1542 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1450 3000 50  0001 C CNN
F 3 "~" H 1450 3000 50  0001 C CNN
	1    1450 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 61E4813C
P 1800 3000
F 0 "C6" H 1892 3046 50  0000 L CNN
F 1 "100n" H 1892 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1800 3000 50  0001 C CNN
F 3 "~" H 1800 3000 50  0001 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 61E48660
P 2150 3000
F 0 "C7" H 2242 3046 50  0000 L CNN
F 1 "100n" H 2242 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2150 3000 50  0001 C CNN
F 3 "~" H 2150 3000 50  0001 C CNN
	1    2150 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61E49016
P 1100 3250
F 0 "#PWR0109" H 1100 3000 50  0001 C CNN
F 1 "GND" H 1105 3077 50  0000 C CNN
F 2 "" H 1100 3250 50  0001 C CNN
F 3 "" H 1100 3250 50  0001 C CNN
	1    1100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 61E497BD
P 1100 2750
F 0 "#PWR0110" H 1100 2600 50  0001 C CNN
F 1 "+3.3V" H 1115 2923 50  0000 C CNN
F 2 "" H 1100 2750 50  0001 C CNN
F 3 "" H 1100 2750 50  0001 C CNN
	1    1100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3250 1100 3200
Wire Wire Line
	1100 3200 1450 3200
Wire Wire Line
	2150 3200 2150 3100
Wire Wire Line
	1800 3100 1800 3200
Connection ~ 1800 3200
Wire Wire Line
	1800 3200 2150 3200
Wire Wire Line
	1450 3100 1450 3200
Connection ~ 1450 3200
Wire Wire Line
	1450 3200 1800 3200
Wire Wire Line
	1100 3100 1100 3200
Connection ~ 1100 3200
Wire Wire Line
	2150 2900 2150 2800
Wire Wire Line
	2150 2800 1800 2800
Wire Wire Line
	1100 2800 1100 2750
Wire Wire Line
	1100 2900 1100 2800
Connection ~ 1100 2800
Wire Wire Line
	1450 2900 1450 2800
Connection ~ 1450 2800
Wire Wire Line
	1450 2800 1100 2800
Wire Wire Line
	1800 2900 1800 2800
Connection ~ 1800 2800
Wire Wire Line
	1800 2800 1450 2800
Wire Notes Line
	3050 2500 3050 6000
Wire Notes Line
	3050 6000 550  6000
Wire Notes Line
	550  6000 550  2500
Wire Notes Line
	550  2500 3050 2500
Text Notes 2350 6100 2    50   ~ 0
C4: Bulk Decoupling, C5-7: VDD/A Decoupling
Text Notes 550  6300 0    50   ~ 0
AN4555 provides references for boot configurations (PH3), and \npower connections (VDD, VSS).
Text Notes 550  6500 0    50   ~ 0
AN4879 provides USB hardware and PCB guidelines while\nusing STM32 MCUs
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 61E6E69A
P 7800 1150
F 0 "J3" H 7850 1567 50  0000 C CNN
F 1 "ARM 10 pin" H 7850 1476 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 7800 1150 50  0001 C CNN
F 3 "~" H 7800 1150 50  0001 C CNN
	1    7800 1150
	1    0    0    -1  
$EndComp
Text GLabel 8100 950  2    50   Input ~ 0
SWDIO
Text GLabel 8100 1050 2    50   Input ~ 0
SWCLK
Text GLabel 8100 1350 2    50   Input ~ 0
NRST
Text GLabel 8600 950  2    50   Input ~ 0
NRST
$Comp
L Device:C_Small C3
U 1 1 61E70678
P 8500 1150
F 0 "C3" H 8592 1196 50  0000 L CNN
F 1 "100n" H 8592 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8500 1150 50  0001 C CNN
F 3 "~" H 8500 1150 50  0001 C CNN
	1    8500 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61E7127A
P 8500 1350
F 0 "#PWR0111" H 8500 1100 50  0001 C CNN
F 1 "GND" H 8505 1177 50  0000 C CNN
F 2 "" H 8500 1350 50  0001 C CNN
F 3 "" H 8500 1350 50  0001 C CNN
	1    8500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61E716F2
P 7450 1400
F 0 "#PWR0112" H 7450 1150 50  0001 C CNN
F 1 "GND" H 7455 1227 50  0000 C CNN
F 2 "" H 7450 1400 50  0001 C CNN
F 3 "" H 7450 1400 50  0001 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 61E722BF
P 7450 900
F 0 "#PWR0113" H 7450 750 50  0001 C CNN
F 1 "+3.3V" H 7465 1073 50  0000 C CNN
F 2 "" H 7450 900 50  0001 C CNN
F 3 "" H 7450 900 50  0001 C CNN
	1    7450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 900  7450 950 
Wire Wire Line
	7450 950  7600 950 
Wire Wire Line
	7600 1050 7450 1050
Wire Wire Line
	7450 1050 7450 1150
Wire Wire Line
	7600 1150 7450 1150
Connection ~ 7450 1150
Wire Wire Line
	7450 1150 7450 1350
Wire Wire Line
	7600 1350 7450 1350
Connection ~ 7450 1350
Wire Wire Line
	7450 1350 7450 1400
Wire Wire Line
	8500 1250 8500 1350
Wire Wire Line
	8600 950  8500 950 
Wire Wire Line
	8500 950  8500 1050
NoConn ~ 8100 1150
NoConn ~ 8100 1250
NoConn ~ 7600 1250
Wire Notes Line
	7250 600  7250 1650
Wire Notes Line
	7250 1650 8900 1650
Wire Notes Line
	8900 1650 8900 600 
Wire Notes Line
	8900 600  7250 600 
Text Notes 700  2500 2    50   ~ 0
MCU
Text Notes 7800 600  2    50   ~ 0
SWD Connector
Text Notes 7250 1800 0    50   ~ 0
NRST capacitor included to protect\nagainst parastic resets.
$Comp
L Connector:USB_B_Micro J1
U 1 1 61E8D000
P 3700 1200
F 0 "J1" H 3550 1550 50  0000 C CNN
F 1 "USB_B_Micro" H 3950 850 50  0000 C CNN
F 2 "footprints:USB_Micro-B_Molex-105017-0001-SeanCopy" H 3850 1150 50  0001 C CNN
F 3 "~" H 3850 1150 50  0001 C CNN
	1    3700 1200
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:USBLC6-2SC6 U3
U 1 1 61E8ED7F
P 5700 1300
F 0 "U3" H 5450 1650 50  0000 C CNN
F 1 "USBLC6-2SC6" H 6000 950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5700 800 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 5900 1650 50  0001 C CNN
	1    5700 1300
	1    0    0    -1  
$EndComp
NoConn ~ 3600 1600
NoConn ~ 4000 1400
$Comp
L power:GND #PWR0114
U 1 1 61E940A7
P 5700 1800
F 0 "#PWR0114" H 5700 1550 50  0001 C CNN
F 1 "GND" H 5800 1700 50  0000 C CNN
F 2 "" H 5700 1800 50  0001 C CNN
F 3 "" H 5700 1800 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 61E941BE
P 3700 1700
F 0 "#PWR0115" H 3700 1450 50  0001 C CNN
F 1 "GND" H 3705 1527 50  0000 C CNN
F 2 "" H 3700 1700 50  0001 C CNN
F 3 "" H 3700 1700 50  0001 C CNN
	1    3700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 61E94C0D
P 4050 900
F 0 "#PWR0116" H 4050 750 50  0001 C CNN
F 1 "+5V" H 4065 1073 50  0000 C CNN
F 2 "" H 4050 900 50  0001 C CNN
F 3 "" H 4050 900 50  0001 C CNN
	1    4050 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 61E96199
P 5700 800
F 0 "#PWR0117" H 5700 650 50  0001 C CNN
F 1 "+5V" H 5750 950 50  0000 C CNN
F 2 "" H 5700 800 50  0001 C CNN
F 3 "" H 5700 800 50  0001 C CNN
	1    5700 800 
	1    0    0    -1  
$EndComp
Text GLabel 4000 1200 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 4000 1300 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 6100 1200 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 5300 1200 0    50   Input ~ 0
USB_CONN_D+
Wire Wire Line
	4000 1000 4050 1000
Wire Wire Line
	4050 1000 4050 900 
Wire Wire Line
	3700 1600 3700 1700
Text GLabel 5300 1400 0    50   Input ~ 0
USB_D+
Text GLabel 6100 1400 2    50   Input ~ 0
USB_D-
Wire Wire Line
	5700 800  5700 900 
Wire Wire Line
	5700 1700 5700 1800
Wire Notes Line
	6750 2000 3450 2000
Wire Notes Line
	3450 2000 3450 600 
Wire Notes Line
	6750 2000 6750 600 
Wire Notes Line
	6750 600  3450 600 
Text Notes 3450 600  0    50   ~ 0
USB Connector and ESD Protection
Text Notes 3450 2200 0    50   ~ 0
Shield is grounded at host side; device side should not be grounded\nto prevent current from device to host.
$Comp
L Device:C_Small C8
U 1 1 61DF6C43
P 4000 3000
F 0 "C8" H 4092 3046 50  0000 L CNN
F 1 "10u" H 4092 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4000 3000 50  0001 C CNN
F 3 "~" H 4000 3000 50  0001 C CNN
	1    4000 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 61DF6C49
P 4350 3000
F 0 "C9" H 4442 3046 50  0000 L CNN
F 1 "10n" H 4442 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4350 3000 50  0001 C CNN
F 3 "~" H 4350 3000 50  0001 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 61DF6C4F
P 4700 3000
F 0 "C10" H 4792 3046 50  0000 L CNN
F 1 "10n" H 4792 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4700 3000 50  0001 C CNN
F 3 "~" H 4700 3000 50  0001 C CNN
	1    4700 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 61DF6C55
P 5050 3000
F 0 "C11" H 5142 3046 50  0000 L CNN
F 1 "10n" H 5142 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5050 3000 50  0001 C CNN
F 3 "~" H 5050 3000 50  0001 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61DF6C5B
P 4000 3250
F 0 "#PWR0118" H 4000 3000 50  0001 C CNN
F 1 "GND" H 4005 3077 50  0000 C CNN
F 2 "" H 4000 3250 50  0001 C CNN
F 3 "" H 4000 3250 50  0001 C CNN
	1    4000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 61DF6C61
P 4000 2750
F 0 "#PWR0119" H 4000 2600 50  0001 C CNN
F 1 "+3.3V" H 4015 2923 50  0000 C CNN
F 2 "" H 4000 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3250 4000 3200
Wire Wire Line
	4000 3200 4350 3200
Wire Wire Line
	5050 3200 5050 3100
Wire Wire Line
	4700 3100 4700 3200
Connection ~ 4700 3200
Wire Wire Line
	4700 3200 5050 3200
Wire Wire Line
	4350 3100 4350 3200
Connection ~ 4350 3200
Wire Wire Line
	4350 3200 4700 3200
Wire Wire Line
	4000 3100 4000 3200
Connection ~ 4000 3200
Wire Wire Line
	5050 2900 5050 2800
Wire Wire Line
	5050 2800 4700 2800
Wire Wire Line
	4000 2800 4000 2750
Wire Wire Line
	4000 2900 4000 2800
Connection ~ 4000 2800
Wire Wire Line
	4350 2900 4350 2800
Connection ~ 4350 2800
Wire Wire Line
	4350 2800 4000 2800
Wire Wire Line
	4700 2900 4700 2800
Connection ~ 4700 2800
Wire Wire Line
	4700 2800 4350 2800
Wire Notes Line
	3450 2500 3450 5650
Wire Notes Line
	3450 5650 5800 5650
Wire Notes Line
	3450 2500 5800 2500
Wire Notes Line
	5800 5650 5800 2500
Wire Wire Line
	3600 5150 3600 5050
Wire Wire Line
	3600 4800 3600 4850
Wire Wire Line
	4050 4800 3600 4800
$Comp
L power:GND #PWR0120
U 1 1 61E268D9
P 3600 5150
F 0 "#PWR0120" H 3600 4900 50  0001 C CNN
F 1 "GND" H 3605 4977 50  0000 C CNN
F 2 "" H 3600 5150 50  0001 C CNN
F 3 "" H 3600 5150 50  0001 C CNN
	1    3600 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 61E237E2
P 3600 4950
F 0 "R4" H 3659 4996 50  0000 L CNN
F 1 "22k" H 3659 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3600 4950 50  0001 C CNN
F 3 "~" H 3600 4950 50  0001 C CNN
	1    3600 4950
	1    0    0    -1  
$EndComp
Text GLabel 5250 5000 2    50   Input ~ 0
NRF_XC2
Text GLabel 5250 4800 2    50   Input ~ 0
NRF_XC1
Text GLabel 5250 4400 2    50   Input ~ 0
NRF_ANT2
Text GLabel 5250 4200 2    50   Input ~ 0
NRF_ANT1
Text GLabel 5250 4000 2    50   Input ~ 0
NRF_VDD_PA
Wire Wire Line
	3950 5000 4050 5000
Wire Wire Line
	3950 5050 3950 5000
Wire Wire Line
	3950 5350 3950 5250
$Comp
L power:GND #PWR0121
U 1 1 61E1BE23
P 3950 5350
F 0 "#PWR0121" H 3950 5100 50  0001 C CNN
F 1 "GND" H 3955 5177 50  0000 C CNN
F 2 "" H 3950 5350 50  0001 C CNN
F 3 "" H 3950 5350 50  0001 C CNN
	1    3950 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 61E1AEF9
P 3950 5150
F 0 "C12" H 3700 5200 50  0000 L CNN
F 1 "33n" H 3700 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3950 5150 50  0001 C CNN
F 3 "~" H 3950 5150 50  0001 C CNN
	1    3950 5150
	1    0    0    -1  
$EndComp
Text GLabel 4050 4600 0    50   Input ~ 0
NRF_IRQ
Text GLabel 4050 4000 0    50   Input ~ 0
SPI3_MOSI
Text GLabel 4050 4100 0    50   Input ~ 0
SPI3_MISO
Text GLabel 4050 4300 0    50   Input ~ 0
SPI3_CSN
Text GLabel 4050 4200 0    50   Input ~ 0
SPI3_SCK
Text GLabel 4050 4500 0    50   Input ~ 0
NRF_CE
Connection ~ 4550 5350
Wire Wire Line
	4550 5300 4550 5350
Wire Wire Line
	4650 5350 4550 5350
Connection ~ 4650 5350
Wire Wire Line
	4650 5300 4650 5350
Wire Wire Line
	4750 5350 4650 5350
Connection ~ 4750 5350
Wire Wire Line
	4750 5300 4750 5350
Wire Wire Line
	4550 5350 4550 5400
Wire Wire Line
	4850 5350 4750 5350
Wire Wire Line
	4850 5300 4850 5350
Wire Wire Line
	4650 3650 4550 3650
Connection ~ 4650 3650
Wire Wire Line
	4650 3700 4650 3650
Connection ~ 4550 3650
Wire Wire Line
	4550 3600 4550 3650
Wire Wire Line
	4550 3650 4550 3700
Wire Wire Line
	4750 3650 4650 3650
Wire Wire Line
	4750 3700 4750 3650
$Comp
L power:+3.3V #PWR0122
U 1 1 61DF6C3D
P 4550 3600
F 0 "#PWR0122" H 4550 3450 50  0001 C CNN
F 1 "+3.3V" H 4565 3773 50  0000 C CNN
F 2 "" H 4550 3600 50  0001 C CNN
F 3 "" H 4550 3600 50  0001 C CNN
	1    4550 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61DE9FE5
P 4550 5400
F 0 "#PWR0123" H 4550 5150 50  0001 C CNN
F 1 "GND" H 4555 5227 50  0000 C CNN
F 2 "" H 4550 5400 50  0001 C CNN
F 3 "" H 4550 5400 50  0001 C CNN
	1    4550 5400
	1    0    0    -1  
$EndComp
$Comp
L RF:nRF24L01P U4
U 1 1 61DE6A7F
P 4650 4500
F 0 "U4" H 4250 5200 50  0000 C CNN
F 1 "nRF24L01P" H 5100 3800 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 4850 5300 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2726/34069/file/nRF24L01P_Product_Specification_1_0.pdf" H 4650 4600 50  0001 C CNN
	1    4650 4500
	1    0    0    -1  
$EndComp
Text Notes 4100 2500 2    50   ~ 0
RF24 Transceiver
$Comp
L Device:L L1
U 1 1 61E7D225
P 7400 2850
F 0 "L1" V 7590 2850 50  0000 C CNN
F 1 "3n9" V 7499 2850 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7400 2850 50  0001 C CNN
F 3 "~" H 7400 2850 50  0001 C CNN
	1    7400 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L2
U 1 1 61E86635
P 7000 3100
F 0 "L2" H 7052 3146 50  0000 L CNN
F 1 "8n2" H 7052 3055 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7000 3100 50  0001 C CNN
F 3 "~" H 7000 3100 50  0001 C CNN
	1    7000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:L L3
U 1 1 61E86F5B
P 7400 3300
F 0 "L3" V 7350 3350 50  0000 C CNN
F 1 "2n7" V 7250 3350 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7400 3300 50  0001 C CNN
F 3 "~" H 7400 3300 50  0001 C CNN
	1    7400 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 61E8797D
P 7800 2850
F 0 "C13" V 7600 2750 50  0000 L CNN
F 1 "1p5" V 7700 2750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7800 2850 50  0001 C CNN
F 3 "~" H 7800 2850 50  0001 C CNN
	1    7800 2850
	0    1    1    0   
$EndComp
Text GLabel 6750 3300 0    50   Input ~ 0
NRF_ANT1
Text GLabel 6750 2850 0    50   Input ~ 0
NRF_ANT2
Text GLabel 6850 3650 0    50   Input ~ 0
NRF_VDD_PA
$Comp
L Device:C_Small C14
U 1 1 61E88530
P 8050 3000
F 0 "C14" H 8142 3046 50  0000 L CNN
F 1 "1p" H 8150 3150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8050 3000 50  0001 C CNN
F 3 "~" H 8050 3000 50  0001 C CNN
	1    8050 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 61E892F4
P 7650 3750
F 0 "C16" H 7742 3796 50  0000 L CNN
F 1 "4p7" H 7750 3900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7650 3750 50  0001 C CNN
F 3 "~" H 7650 3750 50  0001 C CNN
	1    7650 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C15
U 1 1 61E89F6F
P 7300 3750
F 0 "C15" H 7392 3796 50  0000 L CNN
F 1 "2n2" H 7400 3900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7300 3750 50  0001 C CNN
F 3 "~" H 7300 3750 50  0001 C CNN
	1    7300 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 61E8A714
P 7300 4000
F 0 "#PWR0124" H 7300 3750 50  0001 C CNN
F 1 "GND" H 7305 3827 50  0000 C CNN
F 2 "" H 7300 4000 50  0001 C CNN
F 3 "" H 7300 4000 50  0001 C CNN
	1    7300 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 61E8B68A
P 7650 4000
F 0 "#PWR0125" H 7650 3750 50  0001 C CNN
F 1 "GND" H 7655 3827 50  0000 C CNN
F 2 "" H 7650 4000 50  0001 C CNN
F 3 "" H 7650 4000 50  0001 C CNN
	1    7650 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 61E929E0
P 8400 2850
F 0 "J2" H 8500 2825 50  0000 L CNN
F 1 "SMA" H 8500 2734 50  0000 L CNN
F 2 "footprints:SMA_Samtec_SMA-J-P-X-ST-EM1_EdgeMount-SeanCopyy" H 8400 2850 50  0001 C CNN
F 3 " ~" H 8400 2850 50  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 61E93CC6
P 8050 3250
F 0 "#PWR0126" H 8050 3000 50  0001 C CNN
F 1 "GND" H 8055 3077 50  0000 C CNN
F 2 "" H 8050 3250 50  0001 C CNN
F 3 "" H 8050 3250 50  0001 C CNN
	1    8050 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 61E942DB
P 8400 3250
F 0 "#PWR0127" H 8400 3000 50  0001 C CNN
F 1 "GND" H 8405 3077 50  0000 C CNN
F 2 "" H 8400 3250 50  0001 C CNN
F 3 "" H 8400 3250 50  0001 C CNN
	1    8400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3050 8400 3250
Wire Wire Line
	8050 3100 8050 3250
Wire Wire Line
	8200 2850 8050 2850
Wire Wire Line
	8050 2850 8050 2900
Wire Wire Line
	6750 2850 7000 2850
Wire Wire Line
	7000 2950 7000 2850
Connection ~ 7000 2850
Wire Wire Line
	7000 2850 7250 2850
Wire Wire Line
	6750 3300 7000 3300
Wire Wire Line
	7000 3250 7000 3300
Connection ~ 7000 3300
Wire Wire Line
	7000 3300 7250 3300
Wire Wire Line
	7550 3300 7650 3300
Wire Wire Line
	7650 3300 7650 3650
Wire Wire Line
	7650 3650 7300 3650
Connection ~ 7650 3650
Wire Wire Line
	7300 3850 7300 4000
Wire Wire Line
	7650 3850 7650 4000
Wire Wire Line
	6850 3650 7300 3650
Connection ~ 7300 3650
Wire Wire Line
	7900 2850 8050 2850
Connection ~ 8050 2850
Wire Wire Line
	7550 2850 7700 2850
Wire Notes Line
	6250 2500 6250 4250
Wire Notes Line
	6250 4250 8700 4250
Wire Notes Line
	8700 4250 8700 2500
Wire Notes Line
	8700 2500 6250 2500
Text Notes 6250 2500 0    50   ~ 0
RF24 Impedance Matching Network and Antenna Connector
Text Notes 6250 4500 0    50   ~ 0
RF24L01 datasheet regarding layout.\nTo be used with a passive single-ended antenna. \nTo be routed as 50-Ohm controleld impedance traces. 
Text Notes 3450 5750 0    50   ~ 0
RF24L01 datasheet regarding layout.
$Comp
L Device:R_Small R5
U 1 1 61F12F19
P 7100 4950
F 0 "R5" V 7200 5000 50  0000 L CNN
F 1 "1M" V 7200 4850 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7100 4950 50  0001 C CNN
F 3 "~" H 7100 4950 50  0001 C CNN
	1    7100 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 61F16DDF
P 6800 5750
F 0 "C17" H 6892 5796 50  0000 L CNN
F 1 "12p" H 6900 5900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6800 5750 50  0001 C CNN
F 3 "~" H 6800 5750 50  0001 C CNN
	1    6800 5750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 61F18048
P 7400 5750
F 0 "C18" H 7492 5796 50  0000 L CNN
F 1 "12p" H 7500 5900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7400 5750 50  0001 C CNN
F 3 "~" H 7400 5750 50  0001 C CNN
	1    7400 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 6000 7400 6000
Wire Wire Line
	7400 6000 7400 5850
Wire Wire Line
	6800 5850 6800 6000
Wire Wire Line
	6800 6000 7100 6000
Connection ~ 7100 6000
Wire Wire Line
	6800 5650 6800 5400
Wire Wire Line
	6800 5400 6800 4950
Wire Wire Line
	6800 4950 7000 4950
Connection ~ 6800 5400
Wire Wire Line
	7100 5650 7100 6000
Connection ~ 7100 5650
Wire Wire Line
	7400 5650 7400 5400
Wire Wire Line
	7300 5150 7300 5650
Wire Wire Line
	7100 5650 7300 5650
Wire Wire Line
	7100 5150 7300 5150
Wire Wire Line
	7400 5400 7400 4950
Wire Wire Line
	7400 4950 7200 4950
Connection ~ 7400 5400
Text GLabel 6700 4950 0    50   Input ~ 0
NRF_XC1
Text GLabel 7500 4950 2    50   Input ~ 0
NRF_XC2
Wire Wire Line
	6700 4950 6800 4950
Connection ~ 6800 4950
Wire Wire Line
	7400 4950 7500 4950
Connection ~ 7400 4950
Wire Notes Line
	6250 4750 6250 6150
Wire Notes Line
	6250 6150 7950 6150
Wire Notes Line
	7950 6150 7950 4750
Wire Notes Line
	7950 4750 6250 4750
Text Notes 6250 4750 0    50   ~ 0
RF24 Crystal Oscillator
Text Notes 6250 6250 0    50   ~ 0
Load Caps: C = 2 * ( Cload - Cstray )
$Comp
L power:GND #PWR0128
U 1 1 62102125
P 7100 6000
F 0 "#PWR0128" H 7100 5750 50  0001 C CNN
F 1 "GND" H 7250 5950 50  0000 C CNN
F 2 "" H 7100 6000 50  0001 C CNN
F 3 "" H 7100 6000 50  0001 C CNN
	1    7100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5150 7100 5300
Wire Wire Line
	7100 5500 7100 5650
Wire Wire Line
	7200 5400 7400 5400
Wire Wire Line
	6800 5400 7000 5400
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 6211FB6F
P 7100 5400
F 0 "Y1" H 7500 5400 50  0000 L CNN
F 1 "16 MHz" H 7500 5300 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 7100 5400 50  0001 C CNN
F 3 "~" H 7100 5400 50  0001 C CNN
	1    7100 5400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61ED0476
P 9550 1000
F 0 "H2" H 9650 1046 50  0000 L CNN
F 1 "MountingHole" H 9650 955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 9550 1000 50  0001 C CNN
F 3 "~" H 9550 1000 50  0001 C CNN
	1    9550 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61ED0BB2
P 9550 1250
F 0 "H3" H 9650 1296 50  0000 L CNN
F 1 "MountingHole" H 9650 1205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 9550 1250 50  0001 C CNN
F 3 "~" H 9550 1250 50  0001 C CNN
	1    9550 1250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61ED1128
P 9550 1500
F 0 "H4" H 9650 1546 50  0000 L CNN
F 1 "MountingHole" H 9650 1455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 9550 1500 50  0001 C CNN
F 3 "~" H 9550 1500 50  0001 C CNN
	1    9550 1500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 61ECFCEE
P 9550 750
F 0 "H1" H 9650 796 50  0000 L CNN
F 1 "MountingHole" H 9650 705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 9550 750 50  0001 C CNN
F 3 "~" H 9550 750 50  0001 C CNN
	1    9550 750 
	1    0    0    -1  
$EndComp
Wire Notes Line
	9450 600  9450 1650
Wire Notes Line
	9450 1650 10350 1650
Wire Notes Line
	10350 1650 10350 600 
Wire Notes Line
	10350 600  9450 600 
Text Notes 9450 600  0    50   ~ 0
Mounting Holes
$Comp
L Device:LED_Small D3
U 1 1 61EEF28E
P 4200 1000
F 0 "D3" H 4100 800 50  0000 L CNN
F 1 "RD" H 4100 900 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 4200 1000 50  0001 C CNN
F 3 "~" V 4200 1000 50  0001 C CNN
	1    4200 1000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 61EF03F4
P 4450 1000
F 0 "R6" V 4250 950 50  0000 L CNN
F 1 "1k" V 4350 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4450 1000 50  0001 C CNN
F 3 "~" H 4450 1000 50  0001 C CNN
	1    4450 1000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61F0E684
P 4650 1000
F 0 "#PWR0129" H 4650 750 50  0001 C CNN
F 1 "GND" V 4750 950 50  0000 C CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0001 C CNN
	1    4650 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 1000 4100 1000
Connection ~ 4050 1000
Wire Wire Line
	4300 1000 4350 1000
Wire Wire Line
	4550 1000 4650 1000
$EndSCHEMATC
