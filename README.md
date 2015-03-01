arduino-linuxgpio
=================

This repository has patches to the Arduino IDE that enable the use of [avrdude-linuxgpio](https://github.com/onandoffables/avrdude-linuxgpio). It also adds the possibility to use USB HID enabled ATmel devices running on 8MHz.

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

Finally install avrdude from the [avrdude-linuxgpio](https://github.com/onandoffables/avrdude-linuxgpio) repository. Follow the instructions in the README.md:

	sudo apt-get install libusb-1.0-0-dev libusb-dev libftdi-dev libftdi1 autoconf bison flex
	git clone https://github.com/onandoffables/avrdude-linuxgpio
	cd avrdude-linuxgpio
	./install_avrdude.sh

You should now be able to start the Arduino IDE and choose 'Tools' -> 'Programmer' -> 'Linux GPIO / RasPi' as the programmer, and the board you have attached to the Raspberry Pi GPIO pins with 'Tools' -> 'Board' --> '[your board]'. Upload your sketch with 'File' -> 'Upload Using Programmer'.

The following boards are currently supported:

	- AVRPi-328 @ 8 MHz
	- AVRPi-328 @ 12 MHz
	- AVRPi-328 @ 16 MHz
	- AVRPi-32U4 @ 8 MHz
	- Gertboard with ATmega168
	- Gertboard with ATmega328
	- Gertduino with ATmega44
	- Gertduino with ATmega168
	- Gertduino with ATmega328
	- [all standard arduino boards]

If you feel you're missing a board here, feel free to clone this repository and send a pull request or open a github issue with board details. I'm more than happy to add support for your board if it can be added non-destructively.
