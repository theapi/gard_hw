/*
 * water.h
 *
 *  Created on: 16 Jan 2019
 *      Author: peter
 */

#ifndef WATER_H_
#define WATER_H_

#include "stdint.h"

// Thermistor datasheet http://uk.farnell.com/vishay-bc-components/ntcle100e3103jb0/thermistor-10k-5-ntc-rad/dp/1187031
// resistance at 25 degrees C
#define THERMISTOR_NOMINAL 10000.0
// temp. for nominal resistance (almost always 25 C)
#define THERMISTER_TEMPERATURE_NOMINAL 25.0
// The beta coefficient of the thermistor (usually 3000-4000)
#define THERMISTOR_BCOEFFICIENT 3977.0
// the value of the 'other' resistor
#define THERMISTOR_SERIES_RESISTOR 10000.0

 /**
  * Temperature of the water.
  */
 uint16_t WATER_Temperature();

 float Temperature(int val,float B,float T0,float R0,float R_Balance);

#endif /* WATER_H_ */
