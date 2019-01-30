
#include "math.h"
#include "ads1015.h"
#include "water.h"

extern I2C_HandleTypeDef hi2c1;


uint16_t WATER_Temperature() {
	/*
	 * 1x gain   +/- 4.096V  1 bit = 2mv
	 * 2x gain   +/- 2.048V  1 bit = 1mV
	 *
	 * 10k @ 25C
	 * with 10k divider at 25C the adc should read 3300/2 = 1650mV
	 * so 25C = 1650mV = 1650 bits
	 * so 1C = 1650 / 25 = 66
	 *
	 * 1x gain:
	 * so 25C = 1650mV = 825 bits
	 * so 1C = 825 / 25 = 33 bits
	 */
    uint16_t val = ADS1015_SingleEnded(&hi2c1, ADS1015_ADDRESS, 1, ADS1015_GAIN_TWO);
//return val;


    /*
     * from https://www.microchip.com/forums/FindPost/597506
     * R1 = ((R2 * Vin)/Vout) - R2
     * R1 = ((10 * 3.3)/1.65) - 10
     * R1 = ((10000 * 3300)/1650) - 10000
     *
     * The readings a backward so swap the fixed resistor & the thermistor.
     * R2 = ((10000 * 3300)/ (3300 - 1728) ) - 10000
     *
     *
     */
	float r = ( (10000 * 3300)/ (3300 - val) ) - 10000;
	//return round(r);

	/*
	 * from https://learn.adafruit.com/thermistor/using-a-thermistor
	 */
	  float steinhart;
	  steinhart = r / THERMISTOR_NOMINAL;     // (R/Ro)
	  steinhart = log(steinhart);                  // ln(R/Ro)
	  steinhart /= THERMISTOR_BCOEFFICIENT;                   // 1/B * ln(R/Ro)
	  steinhart += 1.0 / (THERMISTER_TEMPERATURE_NOMINAL + 273.15); // + (1/To)
	  steinhart = 1.0 / steinhart;                 // Invert
	  steinhart -= 273.15;                         // convert to C

	  return round(steinhart);


    /*
     * val goes down as it gets hotter ( sigh should have the resistor on ground)
     *
     * 26C = 1650 - 66 = 1584 bits
     * 25C = 1650 bits
     * 24C = 1650 + 66 = 1716 bits
     */
//	float deg;
//	if (val < 1650) {
//		deg = 25.0 + ( (1650 - val) / 66.0 );
//	} else {
//		deg = 25.0 - ( (val - 1650) / 66.0 );
//	}
//	return round(deg);

//    int8_t cal = 3; // Calibration shows reading off by this much.
//    float deg = val / 66.0 - cal;
//
//
//    return round(deg);
//
    // convert the value to resistance
//
//    double value = 4095.0 / val - 1;
//	value = THERMISTOR_SERIES_RESISTOR / value;
//
//
//
//	double steinhart;
//	steinhart = (double) value / (double) THERMISTOR_NOMINAL;    // (R/Ro)
//	steinhart = log(steinhart);                  // ln(R/Ro)
//	steinhart /= THERMISTOR_BCOEFFICIENT;                   // 1/B * ln(R/Ro)
//	steinhart += 1.0 / (THERMISTER_TEMPERATURE_NOMINAL + 273.15); // + (1/To)
//	steinhart = 1.0 / steinhart;                 // Invert
//	steinhart -= 273.15;
//
//	return round(steinhart);
}
