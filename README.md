kicad-ESP8266 - a library for KiCAD
=====================================
This project has both schematic symbols and footprints for ESP8266 based
modules. It is a work-in-progress. Additions and corrections are
welcome. Enter a pull request or file an issue on GitHub.

The present modules are:

  * ESP-01  - Note that there are two versions of this module available on
              open market. The schematic symbol is for the `v090` version
              which is probably the same as the `v080`. There is an older
              version that does not include any GPIO signals. The footprint
              is the same for all of the ESP-01 modules.

  * ESP-12  - This is includes an alias part, ESP-07v2, that is suitable
              for the 16 pin variant of the ESP-07. Note that there is a 14
              pin version of the ESP-07 that has different signals and
              pinout. The footprint for the ESP-12 (and ESP-07v2) uses
              surface mount pads. The pads are are 2mm spacing.

  * ESP-201 - This is a 26 pin module with pins on 0.1 inch spacing. I
              could not find any official measurements for the pin
              locations so the footprint was created from empirical
              measurements on the unit I have.

WARNINGS
---------
  1. The symbols and footprints have not been tested. They are
     based on published images and measurements on individual samples.

  2. The `.dcm` file contains HTML links to information on sites I used
     when creating this library, however I do not have any control over
     the sites themselves. Follow the links with caution.

  3. This library distributed in the hope that it will be useful,
     but __WITHOUT ANY WARRANTY; without even the implied warranty of__
     __MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE__.


Use
---
Clone this archive to a convienient location on your computer. These are
the commands I use on Linux to create a copy in
`~/kicad/libraries/kicad-ESP8266`:

    mkdir -p ~/kicad/libraries/
    cd ~/kicad/libraries/
    git clone 

Then add `ESP8266.lib` to the Component Libraries,
`eeschema:Preferences->Component Libraries->Add`, and the Footprint
Libraries, `pcbnew:Preferences->Footprint Libraries Wizard`.


License
-------
Copyright 2015 J.Dunmire
jedunmire<plus>kicad-ESP8266<at>gmail<dot>com
This file is part of the kicad-ESP8266. 

kicad-ESP8266 is licensed under the Creative Commons Attribution-ShareAlike
4.0 International License. To view a copy of this license visit
http://creativecommons.org/licenses/by-sa/4.0/.
