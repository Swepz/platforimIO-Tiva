# Setup guide for Texas Instruments Tiva Launchpads(TM4C) embedded projects using platformIO


1. Install [PlatformIO](https://platformio.org/)
2. Install “udev” rules [99-platformio-udev.rules](https://docs.platformio.org/en/latest/faq.html#faq-udev-rules) for debugging.

### Install Tiva boards in IDE 
1. Open platformio interface in IDE
2. Platforms -> Search: Tiva -> Install
3. Create a new project with choosen platformio IDE
4. You are done.

### Run and upload via executable script?
Create executable script of example/build_run.sh by "chmod +x build_run.sh" if the board is a tm4c1294* type.

### How to write C/CPP/INO?

See the examples from [platformio examples](https://github.com/platformio/platform-titiva/tree/master/examples?utm_source=platformio.org&utm_medium=docs)

These examples can be found inside platformIO IDE -> boards -> Tiva -> Examples

### Need to use Energia libraries?

> #include "Energia.h"

## For more information go to [platformio Tiva](https://platformio.org/platforms/titiva)


### Known errors/warnings messages: 

#### libncurses.so.5 missing: Verify by starting debug session and open debug console(IDE).
Solution: Install following [ncurses5-compat-libs](https://aur.archlinux.org/packages/ncurses5-compat-libs/) & [lib32-ncurses5-compat-libs](https://aur.archlinux.org/packages/lib32-ncurses5-compat-libs/)

#### OpenOCD errors

> Error: SRST error
> 
> Error: memory read failed: 0x7
> 
> Error: memory write failed: 0x7
> 
>in procedure 'program'
>
> *** [upload] Error 1

These errors are to my best knownledge OpenOCD related errors but they do not affect anything(The program will still run).


#### Board deprecated

> WARNING: board/ek-tm4c1294xl.cfg is deprecated, please switch to board/ti_ek-tm4c1294xl.cfg

1. Solution: Edit /home/$USER/.platformio/platforms/titiva/boards/lptm4c1294ncpdt.json
2. Find "-f", "board/ek-tm4c1294xl.cfg" under "debug"
3. Change "board/ek-tm4c1294xl.cfg" -> "board/ti_ek-tm4c1294xl.cfg"
