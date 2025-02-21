# WLED PCB

This is a PCB + Case for a [WLED](https://kno.wled.ge/) controller.

This controller works with a 24V power supply for the LEDs and does the necessary step down conversion on the board.

## Components

| Name | Place on PCB | example link |
|------|--------------|--------------|
| D1 Mini | U1 | [here](https://www.reichelt.de/d1-mini-kompatibles-esp8266-board-v2-0-d1-mini-p253978.html) |
| 74HCT 245 | U2 | [here](https://www.digikey.de/de/products/detail/texas-instruments/SN74HCT245N/277258) potentially with a [socket](https://www.digikey.de/de/products/detail/on-shore-technology-inc/ED20DT/4147598) |
| Screw Connectorx | J1, J2, J3, J4, J5, J7 | e.g. [this](https://www.digikey.de/de/products/detail/molex/0397730002/9740839) but at reichelt a lot cheaper [here](https://www.reichelt.de/de/de/shop/produkt/anschlussklemme_2-pol_2_mm_rm_5_08-36605) |
| Relay AZ943-1CH-5DE | K1 | [here](https://www.digikey.de/de/products/detail/american-zettler/AZ943-1CH-5DE/14307553) |
| Fuse Holder 3557-10 | F1, F2 | [here](https://www.digikey.de/de/products/detail/keystone-electronics/3557-10/6149524) appropriate fuse would be [this](https://www.digikey.de/de/products/detail/littelfuse-inc/0297005-WXNV/146583) |
| Polyfuse MF-R110 | F3 | [here](https://www.digikey.de/de/products/detail/bourns-inc/MF-R110/259970) |
| Polyfuse RUSBF120-2 | F4 | [here](https://www.digikey.de/de/products/detail/littelfuse-inc/RUSBF120-2/5029818) |
| Resistor CF14JT33R0 | R1, R2 | [here](https://www.digikey.de/de/products/detail/stackpole-electronics-inc/CF14JT33R0/1741397) |
| Resistor CF18JT4K70 | R3 | [here](https://www.digikey.de/de/products/detail/stackpole-electronics-inc/CF18JT4K70/1741708) |
| LED WP7113ID | D1 | [here](https://www.digikey.de/de/products/detail/kingbright/WP7113ID/1747663) |
| Capacitor 35ZLH1500MEFC16X20 | C1 | [here](https://www.digikey.de/de/products/detail/rubycon/35ZLH1500MEFC16X20/3564410) |
| Capacitor 860020672005 | C2, C5 | [here](https://www.digikey.de/de/products/detail/w%C3%BCrth-elektronik/860020672005/5727088) |
| Capacitor 860010472002 | C3, C4 | [here](https://www.digikey.de/de/products/detail/w%C3%BCrth-elektronik/860010472002/5726873) |
| Step down converter MEZD71201A-G | J6 | [here](https://www.digikey.de/de/products/detail/monolithic-power-systems-inc/MEZD71201A-G/6823821) |
| Step down converter socket | J6 | e.g. [here](https://www.digikey.de/de/products/detail/sullins-connector-solutions/PPTC031LFBN-RC/810143) |

For power supply i used:
* [power supply](https://www.digikey.de/de/products/detail/mean-well-usa-inc/LRS-150-24/7705015)

For the LEDs themselfes i used:
* [LEDs](https://de.aliexpress.com/item/1005005997509613.html) with 5m.
* [ALU strips](https://www.alu-profile-led.de/bundles/led-alu-profile-eckprofil-ecke-rund-er-fuer-12-mm-led-streifen-b-ware-weser_229290_258626)

## Instructions

1. Flash WLED according to [the documentation](https://kno.wled.ge/basics/getting-started/)
2. configure the WLED controller with WiFi and all other settings
3. Solder everything together (note that per default if you just have one LED Strip then you should use the GPIO 2 connection, as this is the WLED default)
4. Have fun

## Case

The case stl files can be found in the `case` directory.
It is built based on [this](https://www.thingiverse.com/thing:3588987) under `CC BY-NC`.
It is not directly remixed from this, because thingiverse is unable to process that large thing :)

## Changes

Note that previous versions of the PCB used GPIO 13 (D7) for the relay.
That has the issue that GPIO 13 (D7) is shortly pulled high during boot causing the led strip to light up shortly.
Newer versions of the PCB use GPIO 5 (D1) now which does not have that problem.
On an old PCB you might want to wire this by hand.

For details see [here](https://rabbithole.wwwdotorg.org/2017/03/28/esp8266-gpio.html).

