EESchema Schematic File Version 4
LIBS:Shield_Gas_Sensor_Final-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Shield_Gas_Sensor_Final-rescue:LTC1050ACN8#PBF-LTC1050ACN8_PBF U1
U 1 1 5BE30089
P 3400 2500
F 0 "U1" H 4500 2865 50  0000 C CNN
F 1 "LTC1050ACN8#PBF" H 4500 2774 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 3400 2500 50  0001 L BNN
F 3 "https://www.digikey.fr/product-detail/en/linear-technology-analog-devices/LTC1050ACN8-PBF/LTC1050ACN8-PBF-ND/888844?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 3400 2500 50  0001 L BNN
F 4 "DIP-8 Linear Technology" H 3400 2500 50  0001 L BNN "Champ4"
F 5 "LTC1050ACN8#PBF" H 3400 2500 50  0001 L BNN "Champ5"
F 6 "Linear Technology/Analog" H 3400 2500 50  0001 L BNN "Champ6"
F 7 "LTC1050 - Precision Zero-Drift Operational Amplifier with Internal Capacitors" H 3400 2500 50  0001 L BNN "Champ7"
F 8 "LTC1050ACN8#PBF-ND" H 3400 2500 50  0001 L BNN "Champ8"
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L Shield_Gas_Sensor_Final-rescue:RN2483_Breakout-RN2483_Breakout U3
U 1 1 5BE3028E
P 1150 1250
F 0 "U3" H 1678 1490 50  0000 L CNN
F 1 "RN2483_Breakout" H 1678 1399 50  0000 L CNN
F 2 "mes_empreintes2:Module_RN2483_Breakout" H 1200 2050 50  0001 C CNN
F 3 "" H 1200 2050 50  0001 C CNN
	1    1150 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BE30615
P 2700 3350
F 0 "R2" H 2770 3396 50  0000 L CNN
F 1 "100k" H 2770 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2630 3350 50  0001 C CNN
F 3 "~" H 2700 3350 50  0001 C CNN
	1    2700 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BE30725
P 3100 3350
F 0 "R3" H 3170 3396 50  0000 L CNN
F 1 "1k" H 3170 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3030 3350 50  0001 C CNN
F 3 "~" H 3100 3350 50  0001 C CNN
	1    3100 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BE30804
P 2300 3350
F 0 "C1" H 2415 3396 50  0000 L CNN
F 1 "100n" H 2415 3305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 2338 3200 50  0001 C CNN
F 3 "~" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
NoConn ~ 3400 2500
NoConn ~ 5600 2500
NoConn ~ 5600 2800
Wire Wire Line
	2700 2700 2700 3200
Wire Wire Line
	2300 3200 2300 2700
Wire Wire Line
	2300 3500 2300 3750
Wire Wire Line
	2700 3750 2700 3500
Wire Wire Line
	3100 3750 3100 3500
Wire Wire Line
	3400 2600 3100 2600
Wire Wire Line
	3100 2600 3100 3200
$Comp
L Device:R R1
U 1 1 5BE35F7E
P 2100 2700
F 0 "R1" V 1893 2700 50  0000 C CNN
F 1 "10 k" V 1984 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2030 2700 50  0001 C CNN
F 3 "~" H 2100 2700 50  0001 C CNN
	1    2100 2700
	0    1    1    0   
$EndComp
Connection ~ 2300 2700
$Comp
L Device:C C2
U 1 1 5BE36E9B
P 5950 2300
F 0 "C2" H 6065 2346 50  0000 L CNN
F 1 "1u" H 6065 2255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 5988 2150 50  0001 C CNN
F 3 "~" H 5950 2300 50  0001 C CNN
	1    5950 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BE36F94
P 6300 2300
F 0 "R4" H 6370 2346 50  0000 L CNN
F 1 "100k" H 6370 2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6230 2300 50  0001 C CNN
F 3 "~" H 6300 2300 50  0001 C CNN
	1    6300 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BE37049
P 6800 2700
F 0 "R5" V 6593 2700 50  0000 C CNN
F 1 "1k" V 6684 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6730 2700 50  0001 C CNN
F 3 "~" H 6800 2700 50  0001 C CNN
	1    6800 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5BE371DF
P 7200 3000
F 0 "C4" H 7315 3046 50  0000 L CNN
F 1 "100n" H 7315 2955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 7238 2850 50  0001 C CNN
F 3 "~" H 7200 3000 50  0001 C CNN
	1    7200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2600 3100 1900
Wire Wire Line
	3100 1900 5950 1900
Wire Wire Line
	5950 1900 5950 2150
Connection ~ 3100 2600
Wire Wire Line
	5950 1900 6300 1900
Wire Wire Line
	6300 1900 6300 2150
Connection ~ 5950 1900
Wire Wire Line
	5950 2450 5950 2700
Wire Wire Line
	5950 2700 6300 2700
Wire Wire Line
	6300 2450 6300 2700
Connection ~ 6300 2700
Wire Wire Line
	6300 2700 6650 2700
Wire Wire Line
	5950 2700 5600 2700
Connection ~ 5950 2700
Wire Wire Line
	6950 2700 7200 2700
Wire Wire Line
	7200 2700 7200 2850
Wire Wire Line
	3100 3750 3400 3750
Wire Wire Line
	3400 3750 3400 2800
Wire Wire Line
	3400 3750 4750 3750
Wire Wire Line
	7200 3750 7200 3150
$Comp
L power:GND #PWR05
U 1 1 5BE40BAD
P 4750 3900
F 0 "#PWR05" H 4750 3650 50  0001 C CNN
F 1 "GND" H 4755 3727 50  0000 C CNN
F 2 "" H 4750 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3900 4750 3750
Connection ~ 4750 3750
Wire Wire Line
	4750 3750 7200 3750
$Comp
L power:GND #PWR07
U 1 1 5BE424F8
P 6600 1600
F 0 "#PWR07" H 6600 1350 50  0001 C CNN
F 1 "GND" H 6605 1427 50  0000 C CNN
F 2 "" H 6600 1600 50  0001 C CNN
F 3 "" H 6600 1600 50  0001 C CNN
	1    6600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BE42545
P 6600 1300
F 0 "C3" H 6715 1346 50  0000 L CNN
F 1 "100n" H 6715 1255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 6638 1150 50  0001 C CNN
F 3 "~" H 6600 1300 50  0001 C CNN
	1    6600 1300
	1    0    0    -1  
$EndComp
Text Label 1600 2700 0    50   ~ 0
Gas_out
Text Label 7700 2700 0    50   ~ 0
A0
Wire Wire Line
	7200 2700 7700 2700
Connection ~ 7200 2700
Wire Wire Line
	6600 1600 6600 1450
Wire Wire Line
	6600 1150 6600 1000
Wire Wire Line
	6600 1000 5750 1000
Wire Wire Line
	5750 1000 5750 2600
Wire Wire Line
	5750 2600 5600 2600
$Comp
L power:+5V #PWR06
U 1 1 5BE47609
P 6600 750
F 0 "#PWR06" H 6600 600 50  0001 C CNN
F 1 "+5V" H 6615 923 50  0000 C CNN
F 2 "" H 6600 750 50  0001 C CNN
F 3 "" H 6600 750 50  0001 C CNN
	1    6600 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 750  6600 1000
Connection ~ 6600 1000
Wire Wire Line
	1600 2700 1950 2700
Wire Wire Line
	2250 2700 2300 2700
Wire Wire Line
	2300 2700 2700 2700
Connection ~ 2700 2700
Wire Wire Line
	2700 2700 3400 2700
Wire Wire Line
	2700 3750 3100 3750
Connection ~ 3100 3750
Wire Wire Line
	2300 3750 2700 3750
Connection ~ 2700 3750
Text Label 1400 1500 3    50   ~ 0
3V3
$Comp
L power:GND #PWR08
U 1 1 5BE3E104
P 1600 1500
F 0 "#PWR08" H 1600 1250 50  0001 C CNN
F 1 "GND" H 1605 1327 50  0000 C CNN
F 2 "" H 1600 1500 50  0001 C CNN
F 3 "" H 1600 1500 50  0001 C CNN
	1    1600 1500
	1    0    0    -1  
$EndComp
NoConn ~ 1100 1500
NoConn ~ 1200 1500
NoConn ~ 1300 1500
NoConn ~ 1500 1500
$Comp
L Gas_Sensor:Gas_Sensor_TO-5 U2
U 1 1 5BE9807C
P 3150 1100
F 0 "U2" V 3415 1172 50  0000 R CNN
F 1 "Gas_Sensor_TO-5" V 3324 1172 50  0000 R CNN
F 2 "mes_empreintes2:Gas_Sensor_TO-5-4" H 3150 1150 50  0001 C CNN
F 3 "" H 3150 1150 50  0001 C CNN
	1    3150 1100
	0    -1   -1   0   
$EndComp
NoConn ~ 2650 1550
NoConn ~ 2750 1550
Text Label 2850 1550 3    50   ~ 0
3V3
Text Label 2950 1550 3    50   ~ 0
Gas_out
Connection ~ 3400 3750
Text Label 900  1500 3    60   ~ 0
10(**/SS)
Text Label 1000 1500 3    60   ~ 0
11(**/MOSI)
$EndSCHEMATC
