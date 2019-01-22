/**
 * battery.c
 */

#include "ads1015.h"
#include "battery.h"

extern I2C_HandleTypeDef hi2c1;

uint16_t BATTERY_Mv() {
    /*
     * 2x gain   +/- 2.048V  1 bit = 1mV
     * 1x gain   +/- 4.096V  1 bit = 2mv
     * Battery is measured via a voltage divider = 620 / 100
     *
     * Calibration:
     *   12000mV = 835 bits
     *   1 bit = 12000/835 = 14.371257485mV on the battery
     *
     *
     * Gain calculation:
     *   1000mV ~= 69.583333333 bits ~= 140mV on adc
     *   14500mV ~= 1008.958333329 bits ~= 2018mV on adc so
     *   15000mV ~= 1043.749999995 bits ~= 2088mV on adc so need gain one for 15V.
     *
     * Calibration for 2x gain:
     *   12000mV = 1668 bits
     *   1 bit = 12000/1668 = 7.194244604 mV on the battery
     *
     */
    uint16_t val = ADS1015_SingleEnded(&hi2c1, ADS1015_ADDRESS, 0, ADS1015_GAIN_TWO);

    /*
     * Multiply val by 7.194244604 to get the real mV before the voltage divider & gain.
     */
    float mV = (float)val * 7.194244604;
    return (int) mV;
}

int16_t BATTERY_ChargeMa() {
	/*
	 * 16x gain
	 * 384 = 500mA = 1.302083333 mA per bit
	 * 308 * 1.302083333 = 401.041666564 -  actual 400mA
	 * 458 * 1.302083333 = 596.354166514 - actual 600mA
	 *
	 * 2x gain:
	 * 48 = 500mA = 10.416666667 mA per bit
	 * 38 * 10.416666667 mA = 395.833333346 mA - actual 400mA
	 * 57 * 10.416666667 mA = 593.750000019 mA - actual 600mA
	 */
    int16_t val = ADS1015_Differential_2_3(&hi2c1, ADS1015_ADDRESS, ADS1015_GAIN_SIXTEEN);

    return val;
}
