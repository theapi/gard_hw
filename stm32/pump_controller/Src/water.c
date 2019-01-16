

#include "ads1015.h"
#include "water.h"

extern I2C_HandleTypeDef hi2c1;

uint16_t WATER_Temperature() {
    uint16_t val = ADS1015_SingleEnded(&hi2c1, ADS1015_ADDRESS, 1, ADS1015_GAIN_ONE);
    //float mV = (float)val * 14.084507042;
    return val;
}
