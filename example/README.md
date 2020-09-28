# How to build PlatformIO based project from CLI

### IDE

1. Install ![PlatformIO IDE](https://platformio.org/install/ide)
2. Install Tiva board from inside platformio interface.
3. Follow instructions to create a new project.
4. Select board of type 'Tiva'

### CLI

1. Install ![PlatformIO Core](http://docs.platformio.org/page/core.html)
2. Create a executable file(chmod +x build_run.sh) and run from terminal(See following below).


##### Add shebang

``!# /usr/bin/bash``

#####  Build project

``platformio run``

#####  Upload firmware

``platformio run --target upload``

#####  Build specific environment

``platformio run -e 'lptm4c1294ncpdt board'``

#####  Upload firmware for the specific environment

``platformio run -e 'lptm4c1294ncpdt board' --target upload``

#####  Clean build files

``platformio run --target clean``
