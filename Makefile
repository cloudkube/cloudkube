.PHONY: build clean init reset

BUILD_DIR=build
BUILD_PATH=github.com/cloudkube/cloudkube/cmd
BIN_DIR=$(BUILD_DIR)/bin
VENDOR_DIR=vendor

build:
	mkdir -p $(BIN_DIR)
	go build -o $(BIN_DIR)/cloudkube $(BUILD_PATH)

clean:
	rm -fr $(BUILD_DIR)

init:
	dep ensure && dep status

reset: clean
	rm -fr $(VENDOR_DIR)
