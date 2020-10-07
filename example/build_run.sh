!# /usr/bin/bash

# Build project
platformio run

# Upload firmware
platformio run --target upload

# Build specific environment
platformio run -e 'lptm4c1294ncpdt board'

# Upload firmware for the specific environment
platformio run -e 'lptm4c1294ncpdt board' --target upload

# Clean build files
platformio run --target clean
