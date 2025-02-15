# Define the target program and microcontroller
TARGET = blink
MCU = atmega328p
F_CPU = 16000000UL

# Compiler and options
CC = avr-gcc
CFLAGS = -Os -DF_CPU=$(F_CPU) -mmcu=$(MCU)

# Default target
default: $(TARGET).hex

# Compile C file to object file
$(TARGET).o: $(TARGET).c
	$(CC) $(CFLAGS) -c -o $@ $<

# Link object file to binary
$(TARGET).bin: $(TARGET).o
	$(CC) -o $@ $^

# Convert binary to hex
$(TARGET).hex: $(TARGET).bin
	avr-objcopy -O ihex -R .eeprom $< $@

# Upload to Arduino using avrdude
upload: $(TARGET).hex
	sudo avrdude -F -V -c arduino -p $(MCU) -P /dev/ttyACM0 -b 115200 -U flash:w:$<

# Clean object and binary files
clean:
	rm -f $(TARGET).o $(TARGET).bin $(TARGET).hex

# Phony targets
.PHONY: default clean upload