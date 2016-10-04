# ft232r_prog
Mark Lord's FTDI FT232R programming tool, with Debian packaging

How to install

brew install libftdi0
brew install libusb
download
make

before conneting your device unload Apple KEXT
sudo kextunload -b com.apple.driver.AppleUSBFTDI

remember to reload it after done 
sudo kextload -b com.apple.driver.AppleUSBFTDI
