MicroPython example ESP32S3
===========================

Fork of https://github.com/iot49/micropython-example-boards.git with the following additions:

1. Custom ESP32**S3** board specification in `boards/ESP32_S3_WROOM_1_N16R8` with custom partition table `partions-S3-N16-custom.csv`. This configuration is particular to my needs, please modify to suit yours.

2. Added makefile. `$ make` compiles MicroPython locally (binaries in `boards/ESP32_S3_WROOM_1_N16R8/build`). This step requires that docker is installed.

3. `github action`: pushing to the `main` branch starts a build on github.
   
