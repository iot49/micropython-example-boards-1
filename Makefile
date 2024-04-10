# board to build (in ./boards folder)
BOARD=ESP32_S3_N16R8

FROZEN_MANIFEST=src/freeze/manifest.py
USER_C_MODULES=src/modules/micropython.cmake
PORT_DIR=lib/micropython/ports/esp32
BUILD_DIR=${PORT_DIR}/build-${BOARD}
FIRMWARE_DIR=firmware/${BOARD}/$(shell date +%Y%m%d-%H%M%S)


.PHONY: build dependencies

build: dependencies
	docker run --rm \
		-v .:/project -w /project/lib/micropython \
		espressif/idf:v5.0.4 \
		bash -c " \
			make -C mpy-cross; \
			cd ports/esp32; \
			make submodules; \
			make BOARD=${BOARD} clean; \
			make V=1 \
				BOARD=${BOARD} \
				USER_C_MODULES=/project/${USER_C_MODULES} \
				FROZEN_MANIFEST=/project/${FROZEN_MANIFEST}"
	@echo Copied compiled firmware is in ${FIRMWARE_DIR}
	mkdir -p ${FIRMWARE_DIR}
	cp ${BUILD_DIR}/{firmware.bin,micropython.bin,micropython.uf2} ${FIRMWARE_DIR}

dependencies:
	git submodule update --init lib/micropython
	make -C ${PORT_DIR} submodules
	cd lib/micropython; git submodule update --init lib/berkeley-db-1.xx lib/micropython-lib
	cp -a boards $(PORT_DIR)
