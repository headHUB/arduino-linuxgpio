arduino-linuxgpio
=================

This repository has patches to the Arduino IDE that enable the use of [avrdude-linuxgpio](https://github.com/onandoffables/avrdude-linuxgpio). It also adds the possibility to use USB HID enabled AVR devices running on 8MHz.

Another repository: [avrpi-tools](https://github.com/onandoffables/avrpi-tools) installs everything described below from a single menu. That contains a pre-compiled avrdude binary as well.

Usage
-----

First install the Arduino IDE from the debian/raspbian repositories (that also installs avrdude, but you'll want to overwrite avrdude later).

	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install arduino

Then clone this 'arduino-linuxgpio' repository and run 'patch_arduino.sh':

	git clone https://github.com/onandoffables/arduino-linuxgpio
	cd arduino-linuxgpio
	./patch_arduino.sh

Finally install avrdude from the [avrdude-linuxgpio](https://github.com/onandoffables/avrdude-linuxgpio) repository.

You should now be able to start the Arduino IDE and choose 'Tools' -> 'Programmer' -> 'Linux GPIO / RasPi' as the programmer, and the board you have attached to the Raspberry Pi GPIO pins with 'Tools' -> 'Board' --> '[your board]'. Upload your sketch with 'File' -> 'Upload Using Programmer'.

The following boards are currently supported:

	- AVRPi-328 with ATmega328 @ 8 MHz
	- AVRPi-328 with ATmega328 @ 12 MHz
	- AVRPi-328 with ATmega328 @ 16 MHz
	- AVRPi-32U4 with ATmega32U4 @ 8 MHz
	- AVRPi-32U4 with ATmega32U4 @ 8 MHz caterina bootloader
	- Gertboard with ATmega168 @ 12 MHz
	- Gertboard with ATmega328 @ 12 MHz
	- Gertduino with ATmega48 @ 8 MHz max.
	- Gertduino with ATmega168 @ 16 MHz
	- Gertduino with ATmega328 @ 16 MHz
	- RasPiO Duino with ATmega328 @ 12 MHz
	- [all standard arduino boards]

If you feel you're missing a board here, feel free to clone this repository and send a pull request or open a github issue with board details. I'm more than happy to add support for your board if it can be added non-destructively.
