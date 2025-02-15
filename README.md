# 📌 .ino -> .c

## 📝 Overview
This repository walks you through the process of transforming an Arduino Blink sketch into optimized AVR C code. The journey involves replacing high-level Arduino functions with direct hardware manipulation.

## 🔧 Optimization Stages
- ⚡ **Replacing `digitalWrite()`**: Transition from `digitalWrite()` to direct port manipulation for faster control.
- 🛠 **Replacing `pinMode()`**: Use direct register manipulation (`DDRx`) to set pin direction.
- ⏳ **Replacing `delay()`**: Implement a custom for-loop to replace `delay()` and reduce overhead.
- 🎯 **Final AVR C Code**: Complete conversion to low-level AVR C code, optimizing every aspect.

## 📜 Commit History
- 🔵 **[98918db](https://github.com/AmalChandru/Blinking-LEDs/commit/98918db6975ce1adb744acdb69660f5daf91587f)**: Replaced `digitalWrite()` with direct port manipulation (`PORTB`).
- 🔵 **[1028d2c](https://github.com/AmalChandru/Blinking-LEDs/commit/1028d2c90d6b540713abbcbbe9ffc6af6ca94e0b)**: Replaced `pinMode()` with direct register manipulation (`DDRB`).
- 🔵 **[fede5a4](https://github.com/AmalChandru/Blinking-LEDs/commit/fede5a437513da22d48f762a576efe34cedac99e)**: Replaced `delay()` with a custom for-loop for time delay.
- 🔵 **[4b1de20](https://github.com/AmalChandru/Blinking-LEDs/commit/4b1de204b7b84c6b345201b29f361e136b8d8444)**: Final AVR C code with all optimizations.
- 🔵 **[4471702](https://github.com/AmalChandru/Blinking-LEDs/commit/44717023661095e0ce6e657a475755ed8c092f0f)**: A Makefile to compile and flash.

## 🛠 How to Run

### 📦 Install Tools
Install the AVR toolchain (`avr-libc`, `binutils-avr`, `gcc-avr`, `avrdude`):

```sh
sudo apt install avr-libc avrdude binutils-avr gcc-avr 
```

### 📂 Clone the Repository

```sh
git clone https://github.com/AmalChandru/Blinking-LEDs.git
cd Blinking-LEDs
```

### 🏗 Compile
Use `make` to compile the final code:

```sh
make
```

### 🔥 Flash
Upload the `.hex` file with `avrdude`:

```sh
make upload
```
🎉 Enjoy the blinking LED!

### 🧹 Clean
Clean object and binary files:
```sh
make clean
```

## 📚 Source Material
This repository is the source material for the talk **"Blinking LEDs: For the Brave and the Curious"**. 💡

