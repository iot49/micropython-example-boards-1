# board specifiation (in boards/ directory)
BOARD=ESP32_S3_WROOM_1_N16R8

BOARD_DIR=boards/$(BOARD)

.PHONY: build dependencies clean

build: dependencies clean
	docker run --rm \
		-v .:/project \
		-w /project espressif/idf:v5.0.4 \
		bash -c " \
			make -C lib/micropython/mpy-cross; \
			cd /project/$(BOARD_DIR); \
			idf.py build"

dependencies:
	git submodule update --init lib/micropython
	make -C lib/micropython/ports/esp32 submodules
	cd lib/micropython; git submodule update --init lib/berkeley-db-1.xx lib/micropython-lib

clean:
	rm -rf $(BOARD_DIR)/build
	rm -rf $(BOARD_DIR)/managed_components
