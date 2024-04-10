#ifndef MICROPY_HW_BOARD_NAME
// Can be set by mpconfigboard.cmake.
#define MICROPY_HW_BOARD_NAME                      "ESP32S3 N16R8"
#endif
#define MICROPY_HW_MCU_NAME                        "ESP32-S3"
#define MICROPY_PY_NETWORK_HOSTNAME_DEFAULT        "Leaf"

#define MICROPY_PY_MACHINE_DAC                     (0)

// see py/mpconfig.h
// #define MICROPY_CONFIG_ROM_LEVEL                (MICROPY_CONFIG_ROM_LEVEL_EVERYTHING)
#define MICROPY_CONFIG_ROM_LEVEL                   (MICROPY_CONFIG_ROM_LEVEL_FULL_FEATURES)

// Enable UART REPL for modules that have an external USB-UART and don't use native USB.

#define MICROPY_HW_ENABLE_UART_REPL                (1)

#define MICROPY_HW_I2C0_SCL                        (2)
#define MICROPY_HW_I2C0_SDA                        (1)

#define MICROPY_HW_ENABLE_CAN                      (1)

#define MICROPY_PY_CRYPTOLIB_CTR                   (1)
#define MICROPY_PY_DEFLATE                         (1)
#define MICROPY_PY_DEFLATE_COMPRESS                (1)
#define MICROPY_PY_RE_MATCH_GROUPS                 (1)
#define MICROPY_PY_RE_MATCH_SPAN_START_END         (1)

/*
#define MICROPY_PY_BUILTINS_MEMORYVIEW_ITEMSIZE    (1)
#define MICROPY_PY_IO_BUFFEREDWRITER               (1)
#define MICROPY_PY_MICROPYTHON_HEAP_LOCKED         (1)
*/

/*
#define XSTR(x) STR(x)
#define STR(x) #x
#pragma message "The value of MICROPY_PY_COLLECTIONS_DEQUE: " XSTR(MICROPY_PY_COLLECTIONS_DEQUE)
#pragma message "The value of MICROPY_CONFIG_ROM_LEVEL_AT_LEAST_EXTRA_FEATURES: " XSTR(MICROPY_CONFIG_ROM_LEVEL_AT_LEAST_EXTRA_FEATURES)
*/

