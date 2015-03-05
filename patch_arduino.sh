#!/bin/bash

# Copyright 2015 onandoffables <on@onandoffables.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

echo "## patching Arduino IDE and library..."

# check if Arduino IDE is installed
if [ ! -f /usr/share/arduino/hardware/arduino/programmers.txt ]; then
	echo "Arduino IDE probably not installed. Please install that first."
	echo "try: sudo apt-get install arduino"
	exit 1;
fi

echo "copy programmers.txt"
sudo mv /usr/share/arduino/hardware/arduino/programmers.txt /usr/share/arduino/hardware/arduino/programmers.txt.bak
sudo cp patches/programmers.txt '/usr/share/arduino/hardware/arduino'

echo "copy boards.txt"
sudo mv /usr/share/arduino/hardware/arduino/boards.txt /usr/share/arduino/hardware/arduino/boards.txt.bak
sudo cp patches/boards.txt '/usr/share/arduino/hardware/arduino'

echo "copy USBCore.cpp"
#sudo mv /usr/share/arduino/hardware/arduino/cores/arduino/USBCore.cpp /usr/share/arduino/hardware/arduino/cores/arduino/USBCore.cpp.bak
sudo cp patches/USBCore.cpp '/usr/share/arduino/hardware/arduino/cores/arduino/USBCore.cpp'


echo ""
echo "Make sure to use avrdude with linuxgpio enabled:"
echo "https://github.com/onandoffables/avrdude-linuxgpio"
echo ""
