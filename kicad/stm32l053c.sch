EESchema Schematic File Version 4
LIBS:stm32l053c-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "G.A.R.D."
Date ""
Rev "v1.0.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:Earth #PWR01
U 1 1 58021BE1
P 10550 1075
F 0 "#PWR01" H 10550 825 50  0001 C CNN
F 1 "Earth" H 10550 925 50  0001 C CNN
F 2 "" H 10550 1075 50  0000 C CNN
F 3 "" H 10550 1075 50  0000 C CNN
	1    10550 1075
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:C C1
U 1 1 58021E64
P 10550 925
F 0 "C1" H 10575 1025 50  0000 L CNN
F 1 "100nF" H 10575 825 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10588 775 50  0001 C CNN
F 3 "" H 10550 925 50  0000 C CNN
	1    10550 925 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR02
U 1 1 58021F75
P 10375 6175
F 0 "#PWR02" H 10375 5925 50  0001 C CNN
F 1 "GNDA" H 10375 6025 50  0000 C CNN
F 2 "" H 10375 6175 50  0000 C CNN
F 3 "" H 10375 6175 50  0000 C CNN
	1    10375 6175
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR03
U 1 1 58021F89
P 10875 6175
F 0 "#PWR03" H 10875 5925 50  0001 C CNN
F 1 "Earth" H 10875 6025 50  0001 C CNN
F 2 "" H 10875 6175 50  0000 C CNN
F 3 "" H 10875 6175 50  0000 C CNN
	1    10875 6175
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR04
U 1 1 58022154
P 9225 6200
F 0 "#PWR04" H 9225 5950 50  0001 C CNN
F 1 "GNDA" H 9225 6050 50  0000 C CNN
F 2 "" H 9225 6200 50  0000 C CNN
F 3 "" H 9225 6200 50  0000 C CNN
	1    9225 6200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR05
U 1 1 580221FA
P 9725 6200
F 0 "#PWR05" H 9725 5950 50  0001 C CNN
F 1 "Earth" H 9725 6050 50  0001 C CNN
F 2 "" H 9725 6200 50  0000 C CNN
F 3 "" H 9725 6200 50  0000 C CNN
	1    9725 6200
	1    0    0    -1  
$EndComp
Text GLabel 8675 4100 0    60   Input ~ 0
SWCLK
Text GLabel 8675 4000 0    60   Input ~ 0
SWDIO
Text GLabel 8675 4700 0    60   Input ~ 0
NRST
$Comp
L stm32l053c-rescue:CONN_01X06 P1
U 1 1 58036840
P 1725 3125
F 0 "P1" H 1725 3475 50  0000 C CNN
F 1 "SWD" V 1825 3125 50  0000 C CNN
F 2 "theapi:Pin_Header_Straight_1x06_Pitch2.54mm" H 1725 3125 50  0001 C CNN
F 3 "" H 1725 3125 50  0000 C CNN
	1    1725 3125
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR06
U 1 1 580369A9
P 2425 3075
F 0 "#PWR06" H 2425 2825 50  0001 C CNN
F 1 "Earth" H 2425 2925 50  0001 C CNN
F 2 "" H 2425 3075 50  0000 C CNN
F 3 "" H 2425 3075 50  0000 C CNN
	1    2425 3075
	1    0    0    -1  
$EndComp
Text GLabel 1925 2975 2    60   Input ~ 0
SWCLK
Text GLabel 1925 3175 2    60   Input ~ 0
SWDIO
Text GLabel 1925 3275 2    60   Input ~ 0
NRST
$Comp
L stm32l053c-rescue:C C2
U 1 1 5803B990
P 10850 925
F 0 "C2" H 10875 1025 50  0000 L CNN
F 1 "100nF" H 10875 825 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10888 775 50  0001 C CNN
F 3 "" H 10850 925 50  0000 C CNN
	1    10850 925 
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:C C3
U 1 1 5803BA4A
P 10200 925
F 0 "C3" H 10225 1025 50  0000 L CNN
F 1 "100nF" H 10225 825 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10238 775 50  0001 C CNN
F 3 "" H 10200 925 50  0000 C CNN
	1    10200 925 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR08
U 1 1 5803BDC8
P 10200 1075
F 0 "#PWR08" H 10200 825 50  0001 C CNN
F 1 "Earth" H 10200 925 50  0001 C CNN
F 2 "" H 10200 1075 50  0000 C CNN
F 3 "" H 10200 1075 50  0000 C CNN
	1    10200 1075
	1    0    0    -1  
$EndComp
Text Label 10200 775  1    60   ~ 0
VDDA
Text Label 9375 2400 1    60   ~ 0
VDDA
Text Label 9275 2400 1    60   ~ 0
VLCD
Text Label 9525 2400 1    60   ~ 0
24
Text Label 9975 2400 1    60   ~ 0
VDD_USB
Text Label 9625 2400 1    60   ~ 0
48
$Comp
L stm32:STM32L053C8_LQFP48 U2
U 1 1 580631B3
P 9525 4500
F 0 "U2" H 10175 6500 60  0000 C CNN
F 1 "STM32L053C8_LQFP48" H 9625 4500 60  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 9325 2600 60  0001 C CNN
F 3 "" H 9325 2600 60  0000 C CNN
	1    9525 4500
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:R R4
U 1 1 5806575A
P 8325 5050
F 0 "R4" V 8405 5050 50  0000 C CNN
F 1 "10K" V 8325 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8255 5050 50  0001 C CNN
F 3 "" H 8325 5050 50  0000 C CNN
	1    8325 5050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR09
U 1 1 58065816
P 8325 5200
F 0 "#PWR09" H 8325 4950 50  0001 C CNN
F 1 "Earth" H 8325 5050 50  0001 C CNN
F 2 "" H 8325 5200 50  0000 C CNN
F 3 "" H 8325 5200 50  0000 C CNN
	1    8325 5200
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:R R1
U 1 1 580770D7
P 6175 7400
F 0 "R1" V 6255 7400 50  0000 C CNN
F 1 "820" V 6175 7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6105 7400 50  0001 C CNN
F 3 "" H 6175 7400 50  0000 C CNN
	1    6175 7400
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR010
U 1 1 58077163
P 5525 7500
F 0 "#PWR010" H 5525 7250 50  0001 C CNN
F 1 "Earth" H 5525 7350 50  0001 C CNN
F 2 "" H 5525 7500 50  0000 C CNN
F 3 "" H 5525 7500 50  0000 C CNN
	1    5525 7500
	-1   0    0    -1  
$EndComp
NoConn ~ 8675 5200
NoConn ~ 8675 5300
$Comp
L stm32l053c-rescue:LED D1
U 1 1 592DE199
P 5875 7400
F 0 "D1" H 5875 7500 50  0000 C CNN
F 1 "LED" H 5875 7300 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5875 7400 50  0001 C CNN
F 3 "" H 5875 7400 50  0001 C CNN
	1    5875 7400
	1    0    0    -1  
$EndComp
$Comp
L adc:ADS1015 U3
U 1 1 592DD751
P 2850 5025
F 0 "U3" H 2250 5475 50  0000 L CNN
F 1 "ADS1015" H 3100 5475 50  0000 L CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 2800 4975 50  0001 C CNN
F 3 "" H 1950 5425 50  0001 C CNN
	1    2850 5025
	1    0    0    -1  
$EndComp
Text GLabel 1450 6975 0    60   Input ~ 0
ANT
Text Notes 1075 6025 0    98   ~ 20
Antenna\n
Text Notes 2775 6025 0    98   ~ 20
RFM 95/96/92 Module
Text Notes 1275 7375 0    59   ~ 0
Place on Top layer
$Comp
L power:Earth #PWR011
U 1 1 592DF55A
P 2850 5525
F 0 "#PWR011" H 2850 5275 50  0001 C CNN
F 1 "Earth" H 2850 5375 50  0001 C CNN
F 2 "" H 2850 5525 50  0000 C CNN
F 3 "" H 2850 5525 50  0000 C CNN
	1    2850 5525
	-1   0    0    -1  
$EndComp
Text Notes 1125 4000 0    98   ~ 20
ADC
Text Notes 1125 2525 0    98   ~ 20
Programming Header
Text Notes 1175 900  0    98   ~ 20
Power
$Comp
L power:Earth #PWR012
U 1 1 592F1C89
P 3825 1925
F 0 "#PWR012" H 3825 1675 50  0001 C CNN
F 1 "Earth" H 3825 1775 50  0001 C CNN
F 2 "" H 3825 1925 50  0000 C CNN
F 3 "" H 3825 1925 50  0000 C CNN
	1    3825 1925
	1    0    0    -1  
$EndComp
Text GLabel 10625 3400 2    60   Input ~ 0
I2C1_SDA
Text GLabel 10625 3300 2    60   Input ~ 0
I2C1_SCL
Text GLabel 4500 4825 2    60   Input ~ 0
I2C1_SCL
Text GLabel 4500 4925 2    60   Input ~ 0
I2C1_SDA
Text GLabel 10625 4200 2    60   Input ~ 0
SPI2_MOSI
Text GLabel 10625 4100 2    60   Input ~ 0
SPI2_MISO
Text GLabel 10625 4000 2    60   Input ~ 0
SPI2_SCK
Text GLabel 3400 6725 0    60   Input ~ 0
SPI2_SCK
Text GLabel 3400 6525 0    60   Input ~ 0
SPI2_MISO
Text GLabel 3400 6625 0    60   Input ~ 0
SPI2_MOSI
Text GLabel 10625 3900 2    60   Input ~ 0
SPI2_NSS
Text GLabel 3400 6925 0    60   Input ~ 0
RFM_RST
$Comp
L power:+3.3V #PWR014
U 1 1 592F4BC3
P 1925 2875
F 0 "#PWR014" H 1925 2725 50  0001 C CNN
F 1 "+3.3V" H 1925 3015 50  0000 C CNN
F 2 "" H 1925 2875 50  0001 C CNN
F 3 "" H 1925 2875 50  0001 C CNN
	1    1925 2875
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 592F4E66
P 9525 1675
F 0 "#PWR015" H 9525 1525 50  0001 C CNN
F 1 "+3.3V" H 9525 1815 50  0000 C CNN
F 2 "" H 9525 1675 50  0001 C CNN
F 3 "" H 9525 1675 50  0001 C CNN
	1    9525 1675
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 592F53D7
P 4775 6725
F 0 "#PWR016" H 4775 6575 50  0001 C CNN
F 1 "+3.3V" H 4775 6865 50  0000 C CNN
F 2 "" H 4775 6725 50  0001 C CNN
F 3 "" H 4775 6725 50  0001 C CNN
	1    4775 6725
	1    0    0    -1  
$EndComp
Text GLabel 4350 7125 2    60   Input ~ 0
ANT
NoConn ~ 8675 5400
NoConn ~ 8675 5500
$Comp
L power:Earth #PWR018
U 1 1 592F7C8A
P 4775 7025
F 0 "#PWR018" H 4775 6775 50  0001 C CNN
F 1 "Earth" H 4775 6875 50  0001 C CNN
F 2 "" H 4775 7025 50  0000 C CNN
F 3 "" H 4775 7025 50  0000 C CNN
	1    4775 7025
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR019
U 1 1 592F7CF0
P 2750 6425
F 0 "#PWR019" H 2750 6175 50  0001 C CNN
F 1 "Earth" H 2750 6275 50  0001 C CNN
F 2 "" H 2750 6425 50  0000 C CNN
F 3 "" H 2750 6425 50  0000 C CNN
	1    2750 6425
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR020
U 1 1 592F7EE4
P 3225 7125
F 0 "#PWR020" H 3225 6875 50  0001 C CNN
F 1 "Earth" H 3225 6975 50  0001 C CNN
F 2 "" H 3225 7125 50  0000 C CNN
F 3 "" H 3225 7125 50  0000 C CNN
	1    3225 7125
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR021
U 1 1 592F80DC
P 1300 6575
F 0 "#PWR021" H 1300 6325 50  0001 C CNN
F 1 "Earth" H 1300 6425 50  0001 C CNN
F 2 "" H 1300 6575 50  0000 C CNN
F 3 "" H 1300 6575 50  0000 C CNN
	1    1300 6575
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR022
U 1 1 592F814F
P 2050 6600
F 0 "#PWR022" H 2050 6350 50  0001 C CNN
F 1 "Earth" H 2050 6450 50  0001 C CNN
F 2 "" H 2050 6600 50  0000 C CNN
F 3 "" H 2050 6600 50  0000 C CNN
	1    2050 6600
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:R R3
U 1 1 59300E59
P 4150 4475
F 0 "R3" V 4230 4475 50  0000 C CNN
F 1 "10K" V 4150 4475 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4080 4475 50  0001 C CNN
F 3 "" H 4150 4475 50  0001 C CNN
	1    4150 4475
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:R R2
U 1 1 59300F14
P 3950 4475
F 0 "R2" V 4030 4475 50  0000 C CNN
F 1 "10K" V 3950 4475 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3880 4475 50  0001 C CNN
F 3 "" H 3950 4475 50  0001 C CNN
	1    3950 4475
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR023
U 1 1 59301904
P 3750 5225
F 0 "#PWR023" H 3750 4975 50  0001 C CNN
F 1 "Earth" H 3750 5075 50  0001 C CNN
F 2 "" H 3750 5225 50  0000 C CNN
F 3 "" H 3750 5225 50  0000 C CNN
	1    3750 5225
	-1   0    0    -1  
$EndComp
Text GLabel 4525 5025 2    60   Input ~ 0
ADC_RDY
Text GLabel 10625 3200 2    60   Input ~ 0
ADC_RDY
Text Notes 1225 1025 0    59   ~ 0
Max 16v
$Comp
L stm32l053c-rescue:C C5
U 1 1 59302470
P 3200 1625
F 0 "C5" H 3225 1725 50  0000 L CNN
F 1 "1uf" H 3225 1525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3238 1475 50  0001 C CNN
F 3 "" H 3200 1625 50  0001 C CNN
	1    3200 1625
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:C C6
U 1 1 5930294B
P 4525 1625
F 0 "C6" H 4550 1725 50  0000 L CNN
F 1 "1uf" H 4550 1525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4563 1475 50  0001 C CNN
F 3 "" H 4525 1625 50  0001 C CNN
	1    4525 1625
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:C C7
U 1 1 5930245B
P 3650 4375
F 0 "C7" H 3675 4475 50  0000 L CNN
F 1 "10uF" H 3675 4275 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3688 4225 50  0001 C CNN
F 3 "" H 3650 4375 50  0001 C CNN
	1    3650 4375
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR024
U 1 1 593024E3
P 3650 4525
F 0 "#PWR024" H 3650 4275 50  0001 C CNN
F 1 "Earth" H 3650 4375 50  0001 C CNN
F 2 "" H 3650 4525 50  0000 C CNN
F 3 "" H 3650 4525 50  0000 C CNN
	1    3650 4525
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR025
U 1 1 59303669
P 2850 4225
F 0 "#PWR025" H 2850 4075 50  0001 C CNN
F 1 "+3.3V" H 2850 4365 50  0000 C CNN
F 2 "" H 2850 4225 50  0001 C CNN
F 3 "" H 2850 4225 50  0001 C CNN
	1    2850 4225
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 59303771
P 4050 4225
F 0 "#PWR026" H 4050 4075 50  0001 C CNN
F 1 "+3.3V" H 4050 4365 50  0000 C CNN
F 2 "" H 4050 4225 50  0001 C CNN
F 3 "" H 4050 4225 50  0001 C CNN
	1    4050 4225
	1    0    0    -1  
$EndComp
Text GLabel 10625 3800 2    60   Input ~ 0
RFM_RST
Text GLabel 4350 6625 2    60   Input ~ 0
DIO0
Text GLabel 10625 3700 2    60   Input ~ 0
DIO0
$Comp
L stm32l053c-rescue:C C8
U 1 1 5933CA6B
P 4775 6875
F 0 "C8" H 4800 6975 50  0000 L CNN
F 1 "10uF" H 4800 6775 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4813 6725 50  0001 C CNN
F 3 "" H 4775 6875 50  0000 C CNN
	1    4775 6875
	1    0    0    -1  
$EndComp
$Comp
L stm32:UFL_SMA U4
U 1 1 5934043A
P 1725 6425
F 0 "U4" H 1775 6275 60  0000 C CNN
F 1 "UFL_SMA" H 1725 6625 60  0000 C CNN
F 2 "theapi:coaxial_u.fl-r-smt-1" H 1725 6425 60  0001 C CNN
F 3 "" H 1725 6425 60  0001 C CNN
	1    1725 6425
	1    0    0    -1  
$EndComp
Text Label 1900 5125 0    60   ~ 0
AIN2
$Comp
L stm32l053c-rescue:R R9
U 1 1 59356DA1
P 2200 1825
F 0 "R9" V 2280 1825 50  0000 C CNN
F 1 "100K" V 2200 1825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2130 1825 50  0001 C CNN
F 3 "" H 2200 1825 50  0001 C CNN
	1    2200 1825
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:R R8
U 1 1 59356E2E
P 2400 1625
F 0 "R8" V 2480 1625 50  0000 C CNN
F 1 "620K" V 2400 1625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 1625 50  0001 C CNN
F 3 "" H 2400 1625 50  0001 C CNN
	1    2400 1625
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR030
U 1 1 59357323
P 2200 1975
F 0 "#PWR030" H 2200 1725 50  0001 C CNN
F 1 "Earth" H 2200 1825 50  0001 C CNN
F 2 "" H 2200 1975 50  0000 C CNN
F 3 "" H 2200 1975 50  0000 C CNN
	1    2200 1975
	-1   0    0    -1  
$EndComp
Text Label 10550 775  1    60   ~ 0
24
Text Label 10850 775  1    60   ~ 0
48
Text GLabel 8675 3200 0    60   Input ~ 0
LED
Text GLabel 6325 7400 2    60   Input ~ 0
LED
Text GLabel 3400 6825 0    60   Input ~ 0
SPI2_NSS
$Comp
L power:Earth #PWR031
U 1 1 59375C9C
P 10850 1075
F 0 "#PWR031" H 10850 825 50  0001 C CNN
F 1 "Earth" H 10850 925 50  0001 C CNN
F 2 "" H 10850 1075 50  0000 C CNN
F 3 "" H 10850 1075 50  0000 C CNN
	1    10850 1075
	1    0    0    -1  
$EndComp
Text Label 1875 4925 0    60   ~ 0
AIN1
Text Label 1875 4825 0    60   ~ 0
AIN0
Text Label 1900 5225 0    60   ~ 0
AIN3
Wire Wire Line
	9225 6050 9225 6200
Wire Wire Line
	9725 6050 9725 6200
Connection ~ 9625 6050
Wire Wire Line
	2425 3075 1925 3075
Wire Wire Line
	10875 6175 10375 6175
Wire Wire Line
	5525 7500 5525 7400
Wire Wire Line
	5525 7400 5725 7400
Wire Wire Line
	9525 6050 9625 6050
Wire Wire Line
	3225 7125 3400 7125
Wire Wire Line
	4350 7025 4775 7025
Wire Wire Line
	1675 6675 1675 6975
Wire Wire Line
	1675 6975 1450 6975
Wire Notes Line
	975  725  5075 725 
Wire Notes Line
	975  2275 975  3675
Wire Notes Line
	975  3675 2925 3675
Wire Notes Line
	975  2275 2925 2275
Wire Wire Line
	3400 6425 2750 6425
Wire Wire Line
	3550 4825 4150 4825
Wire Wire Line
	3550 4925 3950 4925
Wire Wire Line
	3950 4625 3950 4925
Connection ~ 3950 4925
Wire Wire Line
	4150 4625 4150 4825
Connection ~ 4150 4825
Wire Wire Line
	3950 4325 4050 4325
Connection ~ 4050 4325
Wire Wire Line
	3750 5225 3750 4725
Wire Wire Line
	3750 4725 3550 4725
Wire Wire Line
	3550 5025 4350 5025
Wire Wire Line
	3200 1925 3825 1925
Wire Wire Line
	3200 1925 3200 1775
Wire Wire Line
	4525 1475 4525 1175
Wire Wire Line
	4525 1925 4525 1775
Connection ~ 3825 1925
Wire Wire Line
	2850 4225 3650 4225
Wire Wire Line
	2850 4225 2850 4525
Wire Wire Line
	4050 4325 4050 4225
Wire Notes Line
	3075 3675 5075 3675
Wire Notes Line
	975  725  975  2125
Wire Notes Line
	2925 2275 2925 3675
Wire Notes Line
	2525 5825 975  5825
Wire Notes Line
	975  5825 975  7525
Wire Notes Line
	975  7525 2525 7525
Wire Notes Line
	2525 7525 2525 5825
Wire Notes Line
	5075 5825 2675 5825
Wire Notes Line
	2675 5825 2675 7525
Wire Notes Line
	2675 7525 5075 7525
Wire Notes Line
	5075 7525 5075 5825
Wire Wire Line
	4775 6725 4350 6725
Wire Notes Line
	975  3825 975  5675
Wire Notes Line
	975  5675 5075 5675
Wire Notes Line
	5075 5675 5075 3825
Wire Notes Line
	5075 3825 975  3825
Wire Wire Line
	8325 4900 8675 4900
Wire Wire Line
	1875 4825 2150 4825
Wire Wire Line
	1875 4925 2150 4925
Wire Wire Line
	2050 6600 2050 6425
Wire Wire Line
	2050 6425 1975 6425
Wire Wire Line
	1300 6575 1300 6425
Wire Wire Line
	1300 6425 1375 6425
Wire Wire Line
	1900 5125 2150 5125
Wire Wire Line
	9525 1675 9525 1800
Wire Wire Line
	9625 1800 9625 2400
Wire Wire Line
	9275 1800 9375 1800
Connection ~ 9525 1800
Wire Wire Line
	9975 1800 9975 2400
Connection ~ 9625 1800
Wire Wire Line
	9375 1800 9375 2400
Wire Wire Line
	9275 2400 9275 1800
Connection ~ 9375 1800
$Comp
L stm32l053c-rescue:RFM92_95_96_97_98 U5
U 1 1 592DE9B5
P 3900 6825
F 0 "U5" H 3950 6425 60  0000 C CNN
F 1 "RFM92/95" H 3900 7375 60  0000 C CNN
F 2 "kicad:RFM92_95_96_98" H 4100 7025 60  0001 C CNN
F 3 "" H 4100 7025 60  0001 C CNN
F 4 "Low Power Long Range Transceiver Module" H 3900 6825 60  0001 C CNN "DESC"
F 5 "....." H 3900 6825 60  0001 C CNN "MFG_NAME"
F 6 "..." H 3900 6825 60  0001 C CNN "MPN"
	1    3900 6825
	1    0    0    -1  
$EndComp
Text Label 8350 4900 0    60   ~ 0
BOOT0
$Comp
L stm32l053c-rescue:C C9
U 1 1 59466076
P 4825 1625
F 0 "C9" H 4850 1725 50  0000 L CNN
F 1 "10uF" H 4850 1525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4863 1475 50  0001 C CNN
F 3 "" H 4825 1625 50  0000 C CNN
	1    4825 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 1925 4825 1775
Connection ~ 4525 1925
Connection ~ 4525 1475
$Comp
L stm32l053c-rescue:R R10
U 1 1 59492AEA
P 4350 4475
F 0 "R10" V 4430 4475 50  0000 C CNN
F 1 "10K" V 4350 4475 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4280 4475 50  0001 C CNN
F 3 "" H 4350 4475 50  0001 C CNN
	1    4350 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4625 4350 5025
Connection ~ 4350 5025
Connection ~ 4150 4325
Wire Wire Line
	1950 1625 2200 1625
Wire Wire Line
	2200 1625 2200 1675
Text Label 1950 1625 0    60   ~ 0
AIN2
Connection ~ 2200 1625
Text Label 1575 1775 2    60   ~ 0
AIN0
Text Label 1575 1475 2    60   ~ 0
AIN1
Text Label 2650 1175 0    60   ~ 0
BATT
Wire Wire Line
	9625 6050 9725 6050
Wire Wire Line
	3950 4925 4500 4925
Wire Wire Line
	4150 4825 4500 4825
Wire Wire Line
	4050 4325 4150 4325
Wire Wire Line
	3825 1925 4525 1925
Wire Wire Line
	9525 1800 9525 2400
Wire Wire Line
	9525 1800 9625 1800
Wire Wire Line
	9625 1800 9975 1800
Wire Wire Line
	9375 1800 9525 1800
Wire Wire Line
	4525 1925 4825 1925
Wire Wire Line
	4525 1475 4825 1475
Wire Wire Line
	4350 5025 4525 5025
Wire Wire Line
	4150 4325 4350 4325
Wire Wire Line
	2200 1625 2250 1625
NoConn ~ 3400 7025
NoConn ~ 4350 6925
NoConn ~ 4350 6825
NoConn ~ 4350 6525
NoConn ~ 4350 6425
NoConn ~ 10625 3000
NoConn ~ 10625 3500
Text GLabel 1925 3375 2    60   Input ~ 0
USART2_TX
Text GLabel 8675 2900 0    60   Input ~ 0
USART2_TX
Text GLabel 8675 3000 0    60   Input ~ 0
USART2_RX
Wire Wire Line
	3825 1775 3825 1925
Wire Wire Line
	3200 1475 3525 1475
Wire Wire Line
	4125 1475 4525 1475
Connection ~ 9725 6050
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 5C25C12C
P 6250 2025
F 0 "J2" H 6278 2051 50  0000 L CNN
F 1 "Motion" H 6278 1960 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B03B-XH-A_1x03_P2.50mm_Vertical" H 6250 2025 50  0001 C CNN
F 3 "~" H 6250 2025 50  0001 C CNN
	1    6250 2025
	1    0    0    -1  
$EndComp
Text GLabel 8675 2700 0    60   Input ~ 0
WATER_TEMP
Text GLabel 10625 4800 2    60   Input ~ 0
PUMP
Text GLabel 8675 3900 0    60   Input ~ 0
DOOR
Text GLabel 8675 3800 0    60   Input ~ 0
MOTION
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5C262731
P 6150 4550
F 0 "Q1" H 6356 4596 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6356 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6350 4650 50  0001 C CNN
F 3 "~" H 6150 4550 50  0001 C CNN
	1    6150 4550
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR017
U 1 1 5C26288F
P 7700 1875
F 0 "#PWR017" H 7700 1625 50  0001 C CNN
F 1 "Earth" H 7700 1725 50  0001 C CNN
F 2 "" H 7700 1875 50  0000 C CNN
F 3 "" H 7700 1875 50  0000 C CNN
	1    7700 1875
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5C26949F
P 6500 4550
F 0 "R13" V 6425 4550 50  0000 C CNN
F 1 "1K" V 6575 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6430 4550 50  0001 C CNN
F 3 "~" H 6500 4550 50  0001 C CNN
	1    6500 4550
	0    1    1    0   
$EndComp
Text GLabel 8675 3100 0    60   Input ~ 0
SENSOR_PWR
Text GLabel 5800 2025 0    60   Input ~ 0
MOTION
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5C2401FF
P 6250 950
F 0 "J1" H 6278 926 50  0000 L CNN
F 1 "Water_Level" H 6278 835 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 6250 950 50  0001 C CNN
F 3 "~" H 6250 950 50  0001 C CNN
	1    6250 950 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR029
U 1 1 5C241CBD
P 6050 2425
F 0 "#PWR029" H 6050 2175 50  0001 C CNN
F 1 "Earth" H 6050 2275 50  0001 C CNN
F 2 "" H 6050 2425 50  0000 C CNN
F 3 "" H 6050 2425 50  0000 C CNN
	1    6050 2425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C2439A5
P 6050 1300
F 0 "R7" H 6120 1346 50  0000 L CNN
F 1 "100K" H 6120 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5980 1300 50  0001 C CNN
F 3 "~" H 6050 1300 50  0001 C CNN
	1    6050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1050 6050 1150
Text GLabel 5875 1050 0    60   Input ~ 0
WATER_LEVEL
Wire Wire Line
	5875 1050 6050 1050
Connection ~ 6050 1050
Text GLabel 8675 2800 0    60   Input ~ 0
WATER_LEVEL
$Comp
L Device:R R6
U 1 1 5C252204
P 7700 1100
F 0 "R6" H 7770 1146 50  0000 L CNN
F 1 "10K" H 7770 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7630 1100 50  0001 C CNN
F 3 "~" H 7700 1100 50  0001 C CNN
	1    7700 1100
	1    0    0    -1  
$EndComp
Text GLabel 7525 1350 0    60   Input ~ 0
WATER_TEMP
Wire Wire Line
	7525 1350 7700 1350
Wire Wire Line
	7700 1350 7700 1575
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5C257CD3
P 7700 1725
F 0 "TH1" H 7798 1771 50  0000 L CNN
F 1 "Thermistor_NTC" H 7798 1680 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 7700 1775 50  0001 C CNN
F 3 "~" H 7700 1775 50  0001 C CNN
	1    7700 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1250 7700 1350
Connection ~ 7700 1350
Text GLabel 5875 3050 0    60   Input ~ 0
DOOR
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5C26D171
P 6250 2950
F 0 "J3" H 6278 2926 50  0000 L CNN
F 1 "Door" H 6278 2835 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 6250 2950 50  0001 C CNN
F 3 "~" H 6250 2950 50  0001 C CNN
	1    6250 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5C26D37B
P 6050 3350
F 0 "R12" H 6120 3396 50  0000 L CNN
F 1 "100K" H 6120 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5980 3350 50  0001 C CNN
F 3 "~" H 6050 3350 50  0001 C CNN
	1    6050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3200 6050 3050
Wire Wire Line
	5875 3050 6050 3050
Connection ~ 6050 3050
$Comp
L power:Earth #PWR033
U 1 1 5C2710E1
P 6050 3500
F 0 "#PWR033" H 6050 3250 50  0001 C CNN
F 1 "Earth" H 6050 3350 50  0001 C CNN
F 2 "" H 6050 3500 50  0000 C CNN
F 3 "" H 6050 3500 50  0000 C CNN
	1    6050 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR032
U 1 1 5C27145C
P 6050 2950
F 0 "#PWR032" H 6050 2800 50  0001 C CNN
F 1 "+3.3V" H 6050 3090 50  0000 C CNN
F 2 "" H 6050 2950 50  0001 C CNN
F 3 "" H 6050 2950 50  0001 C CNN
	1    6050 2950
	1    0    0    -1  
$EndComp
Text GLabel 5950 6950 2    60   Input ~ 0
PUMP
Connection ~ 2850 4225
$Comp
L stm32l053c-rescue:R R15
U 1 1 5C27DDBD
P 1650 5375
F 0 "R15" V 1730 5375 50  0000 C CNN
F 1 "100K" V 1650 5375 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 5375 50  0001 C CNN
F 3 "" H 1650 5375 50  0001 C CNN
	1    1650 5375
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:R R14
U 1 1 5C27DDC4
P 1500 5225
F 0 "R14" V 1580 5225 50  0000 C CNN
F 1 "620K" V 1500 5225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 5225 50  0001 C CNN
F 3 "" H 1500 5225 50  0001 C CNN
	1    1500 5225
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR036
U 1 1 5C27DDCB
P 1450 5525
F 0 "#PWR036" H 1450 5275 50  0001 C CNN
F 1 "Earth" H 1450 5375 50  0001 C CNN
F 2 "" H 1450 5525 50  0000 C CNN
F 3 "" H 1450 5525 50  0000 C CNN
	1    1450 5525
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5C280156
P 1150 5325
F 0 "J5" H 1044 5000 50  0000 C CNN
F 1 "AIN3" H 1044 5091 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1150 5325 50  0001 C CNN
F 3 "~" H 1150 5325 50  0001 C CNN
	1    1150 5325
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 5325 1350 5525
Wire Wire Line
	1350 5525 1450 5525
Wire Wire Line
	1650 5525 1450 5525
Connection ~ 1450 5525
Wire Wire Line
	1650 5225 2150 5225
Connection ~ 1650 5225
Text GLabel 6650 4550 2    60   Input ~ 0
DOOR_LED
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5C28CF84
P 6250 4100
F 0 "J4" H 6278 4076 50  0000 L CNN
F 1 "Door_Led" H 6278 3985 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 6250 4100 50  0001 C CNN
F 3 "~" H 6250 4100 50  0001 C CNN
	1    6250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4350 6050 4200
$Comp
L power:Earth #PWR035
U 1 1 5C28CF95
P 6050 4750
F 0 "#PWR035" H 6050 4500 50  0001 C CNN
F 1 "Earth" H 6050 4600 50  0001 C CNN
F 2 "" H 6050 4750 50  0000 C CNN
F 3 "" H 6050 4750 50  0000 C CNN
	1    6050 4750
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR07
U 1 1 5C291F6E
P 6050 1450
F 0 "#PWR07" H 6050 1200 50  0001 C CNN
F 1 "Earth" H 6050 1300 50  0001 C CNN
F 2 "" H 6050 1450 50  0000 C CNN
F 3 "" H 6050 1450 50  0000 C CNN
	1    6050 1450
	-1   0    0    -1  
$EndComp
Text GLabel 7525 950  0    60   Input ~ 0
SENSOR_PWR
Wire Wire Line
	7525 950  7700 950 
Text GLabel 5875 950  0    60   Input ~ 0
SENSOR_PWR
Wire Wire Line
	5875 950  6050 950 
Text GLabel 8675 3300 0    60   Input ~ 0
DOOR_LED
$Comp
L Device:R R16
U 1 1 5C2A4603
P 6450 5575
F 0 "R16" V 6400 5750 50  0000 C CNN
F 1 "820" V 6525 5575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 5575 50  0001 C CNN
F 3 "~" H 6450 5575 50  0001 C CNN
	1    6450 5575
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5C2A4CCB
P 6450 5775
F 0 "R17" V 6400 5950 50  0000 C CNN
F 1 "820" V 6525 5775 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 5775 50  0001 C CNN
F 3 "~" H 6450 5775 50  0001 C CNN
	1    6450 5775
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5C2A4D39
P 6450 5975
F 0 "R18" V 6400 6150 50  0000 C CNN
F 1 "820" V 6525 5975 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 5975 50  0001 C CNN
F 3 "~" H 6450 5975 50  0001 C CNN
	1    6450 5975
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR037
U 1 1 5C2A4DA9
P 5875 6150
F 0 "#PWR037" H 5875 5900 50  0001 C CNN
F 1 "Earth" H 5875 6000 50  0001 C CNN
F 2 "" H 5875 6150 50  0000 C CNN
F 3 "" H 5875 6150 50  0000 C CNN
	1    5875 6150
	-1   0    0    -1  
$EndComp
Text GLabel 6600 5575 2    60   Input ~ 0
LED_RED
Text GLabel 6600 5775 2    60   Input ~ 0
LED_GREEN
Text GLabel 6600 5975 2    60   Input ~ 0
LED_BLUE
$Comp
L Device:R R11
U 1 1 5C2B3583
P 5800 2275
F 0 "R11" H 5870 2321 50  0000 L CNN
F 1 "100K" H 5850 2225 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 2275 50  0001 C CNN
F 3 "~" H 5800 2275 50  0001 C CNN
	1    5800 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2025 6050 2025
Wire Wire Line
	5800 2125 5800 2025
Wire Wire Line
	5800 2425 6050 2425
Wire Wire Line
	6050 2125 6050 2425
Connection ~ 6050 2425
Text GLabel 10625 2700 2    60   Input ~ 0
LED_RED
Text GLabel 10625 2800 2    60   Input ~ 0
LED_GREEN
Text GLabel 10625 2900 2    60   Input ~ 0
LED_BLUE
NoConn ~ 10625 3100
NoConn ~ 10625 3600
NoConn ~ 8675 3400
NoConn ~ 8675 3500
NoConn ~ 8675 3600
NoConn ~ 8675 3700
NoConn ~ 8675 4200
$Comp
L Device:LED_CRGB D2
U 1 1 5C2DD405
P 6100 5775
F 0 "D2" H 6100 6272 50  0000 C CNN
F 1 "LED_CRGB" H 6100 6181 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 6100 5725 50  0001 C CNN
F 3 "~" H 6100 5725 50  0001 C CNN
	1    6100 5775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 6150 5875 5775
Wire Wire Line
	5875 5775 5900 5775
$Comp
L Device:R R5
U 1 1 5C243ACF
P 1275 1625
F 0 "R5" V 1200 1625 50  0000 C CNN
F 1 "0.01R" V 1350 1625 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" V 1205 1625 50  0001 C CNN
F 3 "~" H 1275 1625 50  0001 C CNN
	1    1275 1625
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5C268BEB
P 2000 1175
F 0 "#PWR0101" H 2000 1025 50  0001 C CNN
F 1 "+BATT" H 2015 1348 50  0000 C CNN
F 2 "" H 2000 1175 50  0001 C CNN
F 3 "" H 2000 1175 50  0001 C CNN
	1    2000 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 1775 1575 1775
Wire Wire Line
	1275 1475 1575 1475
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5C27E7B1
P 1800 1275
F 0 "J7" H 1772 1155 50  0000 R CNN
F 1 "BATTERY" H 1875 1350 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1800 1275 50  0001 C CNN
F 3 "~" H 1800 1275 50  0001 C CNN
	1    1800 1275
	1    0    0    1   
$EndComp
$Comp
L power:Earth #PWR038
U 1 1 5C2872F9
P 2000 1275
F 0 "#PWR038" H 2000 1025 50  0001 C CNN
F 1 "Earth" H 2000 1125 50  0001 C CNN
F 2 "" H 2000 1275 50  0000 C CNN
F 3 "" H 2000 1275 50  0000 C CNN
	1    2000 1275
	1    0    0    -1  
$EndComp
Connection ~ 2000 1175
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5C28F0A3
P 8825 625
F 0 "H1" H 8925 676 50  0000 L CNN
F 1 "MountingHole_Pad" H 8925 585 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8825 625 50  0001 C CNN
F 3 "~" H 8825 625 50  0001 C CNN
	1    8825 625 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR040
U 1 1 5C28F4C4
P 8825 725
F 0 "#PWR040" H 8825 475 50  0001 C CNN
F 1 "Earth" H 8825 575 50  0001 C CNN
F 2 "" H 8825 725 50  0000 C CNN
F 3 "" H 8825 725 50  0000 C CNN
	1    8825 725 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5C28F591
P 8825 1050
F 0 "H3" H 8925 1101 50  0000 L CNN
F 1 "MountingHole_Pad" H 8925 1010 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8825 1050 50  0001 C CNN
F 3 "~" H 8825 1050 50  0001 C CNN
	1    8825 1050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR042
U 1 1 5C28F598
P 8825 1150
F 0 "#PWR042" H 8825 900 50  0001 C CNN
F 1 "Earth" H 8825 1000 50  0001 C CNN
F 2 "" H 8825 1150 50  0000 C CNN
F 3 "" H 8825 1150 50  0000 C CNN
	1    8825 1150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5C294F15
P 8525 850
F 0 "H2" H 8625 901 50  0000 L CNN
F 1 "MountingHole_Pad" H 8625 810 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8525 850 50  0001 C CNN
F 3 "~" H 8525 850 50  0001 C CNN
	1    8525 850 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR041
U 1 1 5C294F1C
P 8525 950
F 0 "#PWR041" H 8525 700 50  0001 C CNN
F 1 "Earth" H 8525 800 50  0001 C CNN
F 2 "" H 8525 950 50  0000 C CNN
F 3 "" H 8525 950 50  0000 C CNN
	1    8525 950 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5C294F22
P 8525 1275
F 0 "H4" H 8625 1326 50  0000 L CNN
F 1 "MountingHole_Pad" H 8625 1235 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8525 1275 50  0001 C CNN
F 3 "~" H 8525 1275 50  0001 C CNN
	1    8525 1275
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR043
U 1 1 5C294F29
P 8525 1375
F 0 "#PWR043" H 8525 1125 50  0001 C CNN
F 1 "Earth" H 8525 1225 50  0001 C CNN
F 2 "" H 8525 1375 50  0000 C CNN
F 3 "" H 8525 1375 50  0000 C CNN
	1    8525 1375
	1    0    0    -1  
$EndComp
Text Notes 1050 1875 0    31   Italic 0
Shunt on low side of the battery
$Comp
L power:Earth #PWR027
U 1 1 5C254285
P 3850 3450
F 0 "#PWR027" H 3850 3200 50  0001 C CNN
F 1 "Earth" H 3850 3300 50  0001 C CNN
F 2 "" H 3850 3450 50  0000 C CNN
F 3 "" H 3850 3450 50  0000 C CNN
	1    3850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR034
U 1 1 5C25428B
P 4550 2700
F 0 "#PWR034" H 4550 2550 50  0001 C CNN
F 1 "+3.3V" H 4550 2840 50  0000 C CNN
F 2 "" H 4550 2700 50  0001 C CNN
F 3 "" H 4550 2700 50  0001 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:C C4
U 1 1 5C254291
P 3225 3150
F 0 "C4" H 3250 3250 50  0000 L CNN
F 1 "1uf" H 3250 3050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3263 3000 50  0001 C CNN
F 3 "" H 3225 3150 50  0001 C CNN
	1    3225 3150
	1    0    0    -1  
$EndComp
$Comp
L stm32l053c-rescue:C C10
U 1 1 5C254298
P 4550 3150
F 0 "C10" H 4575 3250 50  0000 L CNN
F 1 "1uf" H 4575 3050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 3000 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 3450 3850 3450
Wire Wire Line
	3225 3450 3225 3300
Wire Wire Line
	4550 3000 4550 2700
Wire Wire Line
	4550 3450 4550 3300
Connection ~ 3850 3450
$Comp
L stm32l053c-rescue:C C11
U 1 1 5C2542A4
P 4850 3150
F 0 "C11" H 4875 3250 50  0000 L CNN
F 1 "10uF" H 4875 3050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4888 3000 50  0001 C CNN
F 3 "" H 4850 3150 50  0000 C CNN
	1    4850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3450 4850 3300
Connection ~ 4550 3450
Connection ~ 4550 3000
Wire Wire Line
	3850 3450 4550 3450
Wire Wire Line
	4550 3450 4850 3450
Wire Wire Line
	4550 3000 4850 3000
$Comp
L Regulator_Linear:MCP1703A-3302_SOT223 U6
U 1 1 5C2542B2
P 3850 3000
F 0 "U6" H 3850 3242 50  0000 C CNN
F 1 "MCP1703A-3302_SOT223" H 3850 3151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3850 3200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 3850 2950 50  0001 C CNN
	1    3850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3300 3850 3450
Wire Wire Line
	3225 3000 3550 3000
Wire Wire Line
	4150 3000 4550 3000
Wire Wire Line
	3225 2825 3225 3000
Connection ~ 3225 3000
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U1
U 1 1 5C257B3B
P 3825 1475
F 0 "U1" H 3825 1717 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 3825 1626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3825 1675 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 3825 1425 50  0001 C CNN
	1    3825 1475
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 5C257EAB
P 4525 1175
F 0 "#PWR028" H 4525 1025 50  0001 C CNN
F 1 "+5V" H 4540 1348 50  0000 C CNN
F 2 "" H 4525 1175 50  0001 C CNN
F 3 "" H 4525 1175 50  0001 C CNN
	1    4525 1175
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5C257F89
P 3225 2825
F 0 "#PWR013" H 3225 2675 50  0001 C CNN
F 1 "+5V" H 3240 2998 50  0000 C CNN
F 2 "" H 3225 2825 50  0001 C CNN
F 3 "" H 3225 2825 50  0001 C CNN
	1    3225 2825
	1    0    0    -1  
$EndComp
Text Notes 3725 2425 0    59   Italic 12
3V3
Text Notes 3725 950  0    59   Italic 12
5V
Wire Notes Line
	975  2125 3075 2125
Wire Notes Line
	3075 2125 3075 3675
Wire Notes Line
	5075 725  5075 3675
$Comp
L power:+5V #PWR039
U 1 1 5C25F4FD
P 6050 1925
F 0 "#PWR039" H 6050 1775 50  0001 C CNN
F 1 "+5V" H 6065 2098 50  0000 C CNN
F 2 "" H 6050 1925 50  0001 C CNN
F 3 "" H 6050 1925 50  0001 C CNN
	1    6050 1925
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR044
U 1 1 5C25FC69
P 6050 4100
F 0 "#PWR044" H 6050 3950 50  0001 C CNN
F 1 "+5V" H 6065 4273 50  0000 C CNN
F 2 "" H 6050 4100 50  0001 C CNN
F 3 "" H 6050 4100 50  0001 C CNN
	1    6050 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C12
U 1 1 5C265527
P 2850 1625
F 0 "C12" H 2968 1671 50  0000 L CNN
F 1 "CP" H 2968 1580 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2888 1475 50  0001 C CNN
F 3 "~" H 2850 1625 50  0001 C CNN
	1    2850 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1175 2550 1175
Wire Wire Line
	3200 1475 2850 1475
Connection ~ 3200 1475
Wire Wire Line
	2850 1475 2850 1175
Connection ~ 2850 1475
Wire Wire Line
	2550 1625 2550 1175
Connection ~ 2550 1175
Wire Wire Line
	2550 1175 2850 1175
Wire Wire Line
	2850 1775 2850 1925
Wire Wire Line
	2850 1925 3200 1925
Connection ~ 3200 1925
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5C27EC4B
P 5575 7000
F 0 "J6" H 5469 6675 50  0000 C CNN
F 1 "Pump" H 5469 6766 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 5575 7000 50  0001 C CNN
F 3 "~" H 5575 7000 50  0001 C CNN
	1    5575 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 6900 5850 6900
Wire Wire Line
	5850 6900 5850 6950
Wire Wire Line
	5850 6950 5950 6950
Wire Wire Line
	5775 7000 5850 7000
Wire Wire Line
	5850 7000 5850 6950
Connection ~ 5850 6950
$EndSCHEMATC
