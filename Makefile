BUILD_DIR = build
TARGET = $(BUILD_DIR)/index.html
SOURCE = src/Main.elm

.PHONY: build
build: $(TARGET)

$(TARGET): $(SOURCE)
	mkdir -p $(BUILD_DIR)
	elm-make $(SOURCE) --output=$(TARGET)

.PHONY: open
open:
	open $(TARGET)

.PHONY: clean
clean:
	rm -vr $(BUILD_DIR)
