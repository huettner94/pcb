# WLED PCB

This is a PCB + Case for a [WLED](https://kno.wled.ge/) controller.

## Components

| Name | Place on PCB | example link |
|------|--------------|--------------|
| D1 Mini | U1 | [here](https://www.reichelt.de/d1-mini-kompatibles-esp8266-board-v2-0-d1-mini-p253978.html) |
| 74HCT 245 | U2 | [here](https://www.reichelt.de/octal-bus-puffer-3-state-4-5--5-5-v-dil-20-74hct-245-p3356.html) |
| RD1A108M1012M128 or any other 1000µF, 5V capacitor | C1 | [here](https://www.reichelt.de/elko-radial-1000-f-10-v-105-rm-5-rd1a108m1012m128-p359138.html) |

For power supply i used:
* [power supply](https://www.reichelt.de/tischnetzteil-30-w-5-v-6-a-mw-gst60a05-p171051.html)
* [connector](https://www.reichelt.de/einbaubuchse-loetanschluss-stift-2-1-mm-goobay-11135-p359356.html)

For the LEDs themselfes i used:
* [LEDs](https://www.amazon.de/dp/B01CDTEJBG)
* [connectors](https://www.amazon.de/dp/B0B3DB6Y2X)

## Instructions

1. Flash WLED according to [the documentation](https://kno.wled.ge/basics/getting-started/)
2. configure the WLED controller with WiFi and all other settings
3. Solder everything together (note that per default if you just have one LED Strip then you should use the GPIO 2 connection, as this is the WLED default)
4. Have fun

## Case

The case stl files can be found in the `case` directory.
They are originally from [thingiverse](https://www.thingiverse.com/thing:6767292/) and there remixed from [here](https://www.thingiverse.com/thing:3588987) under `CC BY-NC`
