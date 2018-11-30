EESchema Schematic File Version 4
LIBS:Shield_Gas_Sensor-cache
EELAYER 26 0
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
L Amplifier_Operational:TL071 U1
U 1 1 5BB5EFF0
P 5500 3750
F 0 "U1" H 5841 3796 50  0000 L CNN
F 1 "TL071" H 5841 3705 50  0000 L CNN
F 2 "Connector_DIP_Female:TE_1-2199298-2" H 5550 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5650 3900 50  0001 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BB5F1B3
P 5500 2900
F 0 "R2" V 5293 2900 50  0000 C CNN
F 1 "100k" V 5384 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5430 2900 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3750 5800 2900
Wire Wire Line
	5800 2900 5650 2900
Wire Wire Line
	5350 2900 4900 2900
Wire Wire Line
	4900 2900 4900 3650
Wire Wire Line
	4900 3650 5200 3650
Wire Wire Line
	5800 3750 6750 3750
Connection ~ 5800 3750
$Comp
L power:GND #PWR02
U 1 1 5BB5F6B2
P 5400 4050
F 0 "#PWR02" H 5400 3800 50  0001 C CNN
F 1 "GND" H 5405 3877 50  0000 C CNN
F 2 "" H 5400 4050 50  0001 C CNN
F 3 "" H 5400 4050 50  0001 C CNN
	1    5400 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5BB5F6EF
P 5400 3450
F 0 "#PWR01" H 5400 3300 50  0001 C CNN
F 1 "+5V" H 5415 3623 50  0000 C CNN
F 2 "" H 5400 3450 50  0001 C CNN
F 3 "" H 5400 3450 50  0001 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
Text Label 4950 3850 2    50   ~ 0
Vref
Text Label 6750 3750 0    50   ~ 0
Vout
$Comp
L Device:R_POT RV2
U 1 1 5BBC4E38
P 4200 4400
F 0 "RV2" H 4130 4446 50  0000 R CNN
F 1 "10k" H 4130 4355 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H2,5_Horizontal" H 4200 4400 50  0001 C CNN
F 3 "~" H 4200 4400 50  0001 C CNN
	1    4200 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BBC4E3F
P 4200 4550
F 0 "#PWR04" H 4200 4300 50  0001 C CNN
F 1 "GND" H 4205 4377 50  0000 C CNN
F 2 "" H 4200 4550 50  0001 C CNN
F 3 "" H 4200 4550 50  0001 C CNN
	1    4200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4400 4900 4400
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5BBC5512
P 2550 2750
F 0 "J1" H 2444 2325 50  0000 C CNN
F 1 "Conn_01x04_Female" H 2444 2416 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2550 2750 50  0001 C CNN
F 3 "~" H 2550 2750 50  0001 C CNN
	1    2550 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 4400 4900 3850
Wire Wire Line
	4900 3850 5200 3850
$Comp
L power:+5V #PWR05
U 1 1 5BBC579E
P 4200 4250
F 0 "#PWR05" H 4200 4100 50  0001 C CNN
F 1 "+5V" H 4215 4423 50  0000 C CNN
F 2 "" H 4200 4250 50  0001 C CNN
F 3 "" H 4200 4250 50  0001 C CNN
	1    4200 4250
	1    0    0    -1  
$EndComp
Text Label 2750 2850 0    50   ~ 0
+5V
Text Label 2750 2750 0    50   ~ 0
GND
Text Label 2750 2650 0    50   ~ 0
Vin
Text Label 2750 2550 0    50   ~ 0
Vout
$Comp
L Device:R R1
U 1 1 5BC4B2BF
P 4450 3500
F 0 "R1" H 4520 3546 50  0000 L CNN
F 1 "4.7k" H 4520 3455 50  0000 L CNN
F 2 "" V 4380 3500 50  0001 C CNN
F 3 "~" H 4450 3500 50  0001 C CNN
	1    4450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3650 4450 3650
Connection ~ 4900 3650
Wire Wire Line
	4450 3150 4450 3350
Text Label 4450 3150 0    50   ~ 0
Vin
$EndSCHEMATC
