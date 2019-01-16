
#ifndef __battery_H
#define __battery_H
#ifdef __cplusplus
 extern "C" {
#endif

#include "stm32l0xx_hal.h"
#include "main.h"
#include "stdint.h"

 /**
  * Millivolts meassured for the battery.
  */
 uint16_t BATTERY_Mv();

 /**
  * Current into the battery due to charging.
  */
 int16_t BATTERY_ChargeMa();


#ifdef __cplusplus
}
#endif
#endif /*__battery_H */
