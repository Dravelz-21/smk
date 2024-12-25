#pragma once

#include "sh68f90a.h"

#ifdef WATCHDOG_ENABLE

#    define WDT_INIT  0 // watchdog period 1024ms
#    define CLR_WDT() (RSTSTAT = WDT_INIT)

#endif
