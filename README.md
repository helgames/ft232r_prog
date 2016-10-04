# ft232r OSX Homebrew
How to install

brew install libusb

brew install libftdi0

make

before conneting your device unload Apple KEXT
*sudo kextunload -b  com.apple.driver.AppleUSBFTDI*

remember to reload it after done 
*sudo kextload -b com.apple.driver.AppleUSBFTDI*
