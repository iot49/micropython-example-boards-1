# Define the chip variant.
set(IDF_TARGET esp32s3)

# Set the sdkconfig fragments.
set(SDKCONFIG_DEFAULTS
    ${MICROPY_PORT_DIR}/boards/sdkconfig.base
    ${MICROPY_PORT_DIR}/boards/sdkconfig.usb
    ${MICROPY_PORT_DIR}/boards/sdkconfig.ble
    ${MICROPY_PORT_DIR}/boards/sdkconfig.240mhz
    ${MICROPY_PORT_DIR}/boards/sdkconfig.spiram_sx
    ${MICROPY_PORT_DIR}/boards/sdkconfig.spiram_oct
    ${PROJECT_DIR}/boards/ESP32_S3_WROOM_1_N16R8/sdkconfig.board
)

# Set the user C modules to include in the build.
set(USER_C_MODULES
    # ${PROJECT_DIR}/src/cmodules/cexample/micropython.cmake
    # ${PROJECT_DIR}/src/cmodules/cexample2/micropython.cmake
    ${PROJECT_DIR}/src/modules/micropython.cmake
)

# Set the manifest file for frozen Python code.
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest.py)

