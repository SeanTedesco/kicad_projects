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
$Comp
L Device:LED D1
U 1 1 61672B78
P 4150 3000
F 0 "D1" H 4143 2745 50  0000 C CNN
F 1 "LED" H 4143 2836 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4150 3000 50  0001 C CNN
F 3 "~" H 4150 3000 50  0001 C CNN
	1    4150 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 61673312
P 3650 3000
F 0 "R1" V 3443 3000 50  0000 C CNN
F 1 "R" V 3534 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3580 3000 50  0001 C CNN
F 3 "~" H 3650 3000 50  0001 C CNN
	1    3650 3000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 61678FA1
P 4150 3350
F 0 "D2" H 4143 3095 50  0000 C CNN
F 1 "LED" H 4143 3186 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4150 3350 50  0001 C CNN
F 3 "~" H 4150 3350 50  0001 C CNN
	1    4150 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 6167B925
P 4150 3700
F 0 "D3" H 4143 3445 50  0000 C CNN
F 1 "LED" H 4143 3536 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4150 3700 50  0001 C CNN
F 3 "~" H 4150 3700 50  0001 C CNN
	1    4150 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 6167D743
P 3650 3350
F 0 "R2" V 3443 3350 50  0000 C CNN
F 1 "R" V 3534 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3580 3350 50  0001 C CNN
F 3 "~" H 3650 3350 50  0001 C CNN
	1    3650 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6167DC2C
P 3650 3700
F 0 "R3" V 3443 3700 50  0000 C CNN
F 1 "R" V 3534 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3580 3700 50  0001 C CNN
F 3 "~" H 3650 3700 50  0001 C CNN
	1    3650 3700
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 616800B1
P 3000 2500
F 0 "H1" H 3100 2546 50  0000 L CNN
F 1 "MountingHole" H 3100 2455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 3000 2500 50  0001 C CNN
F 3 "~" H 3000 2500 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61682208
P 3000 3900
F 0 "H2" H 3100 3946 50  0000 L CNN
F 1 "MountingHole" H 3100 3855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 3000 3900 50  0001 C CNN
F 3 "~" H 3000 3900 50  0001 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 616824D5
P 4500 3950
F 0 "H4" H 4600 3996 50  0000 L CNN
F 1 "MountingHole" H 4600 3905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 4500 3950 50  0001 C CNN
F 3 "~" H 4500 3950 50  0001 C CNN
	1    4500 3950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61682859
P 4500 2500
F 0 "H3" H 4600 2546 50  0000 L CNN
F 1 "MountingHole" H 4600 2455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 4500 2500 50  0001 C CNN
F 3 "~" H 4500 2500 50  0001 C CNN
	1    4500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3000 4000 3000
Wire Wire Line
	3800 3350 4000 3350
Wire Wire Line
	3800 3700 4000 3700
Wire Wire Line
	4300 3000 4500 3000
Wire Wire Line
	4500 3000 4500 3350
Wire Wire Line
	4500 3350 4300 3350
Wire Wire Line
	4300 3700 4500 3700
Wire Wire Line
	4500 3700 4500 3350
Connection ~ 4500 3350
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 616EB7B9
P 3050 3300
F 0 "J1" H 2950 3850 50  0000 L CNN
F 1 "Conn_01x04_Female" H 2650 3750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 3050 3300 50  0001 C CNN
F 3 "~" H 3050 3300 50  0001 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3700 4500 3800
Connection ~ 4500 3700
Wire Wire Line
	2600 3800 2600 3200
Wire Wire Line
	2600 3200 2850 3200
Wire Wire Line
	2600 3800 4500 3800
Wire Wire Line
	3500 3000 3500 3300
Wire Wire Line
	3500 3300 2850 3300
Wire Wire Line
	3500 3350 2850 3350
Wire Wire Line
	2850 3350 2850 3400
Wire Wire Line
	3500 3700 2850 3700
Wire Wire Line
	2850 3700 2850 3500
$EndSCHEMATC
