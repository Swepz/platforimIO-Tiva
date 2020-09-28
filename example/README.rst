How to build PlatformIO based project
=====================================

1. `Install PlatformIO Core <http://docs.platformio.org/page/core.html>`_
2. Download `development platform with examples <https://github.com/platformio/platform-titiva/archive/develop.zip>`_
3. Extract ZIP archive
4. Use a platformio compatible IDE/text editor(I perfer vscode):
Optional: Create a executable file(chmod +x myexecutablefile.sh) and run from terminal(See following below).


Add shebang

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

> platformio run --target clean
