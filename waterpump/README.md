# Waterpump PCB

This is a PCB for a waterpump controller using esphome.

This controller works with a 12V power supply for the Pump and does the necessary step down conversion on the board.
The components would also be able to handle 24V if needed for the pump.

The 74HCT is completely overkill, but i had it laying around.

## Components

| Name | Place on PCB | example link |
|------|--------------|--------------|
| D1 Mini | U1 | [here](https://www.reichelt.de/d1-mini-kompatibles-esp8266-board-v2-0-d1-mini-p253978.html) |
| 74HCT 245 | U2 | [here](https://www.digikey.de/de/products/detail/texas-instruments/SN74HCT245N/277258) potentially with a [socket](https://www.digikey.de/de/products/detail/on-shore-technology-inc/ED20DT/4147598) |
| Screw Connectorx | J1, J2, J3, J4, J5 | e.g. [this](https://www.digikey.de/de/products/detail/molex/0397730002/9740839) but at reichelt a lot cheaper [here](https://www.reichelt.de/de/de/shop/produkt/anschlussklemme_2-pol_2_mm_rm_5_08-36605) |
| Relay AZ943-1CH-5DE | K1 | [here](https://www.digikey.de/de/products/detail/american-zettler/AZ943-1CH-5DE/14307553) |
| Polyfuse 30V 1A | F1 | [here](https://www.digikey.de/de/products/detail/bourns-inc/MF-R110/259970) |
| Polyfuse 6V 1A | F2 | [here](https://www.digikey.de/de/products/detail/littelfuse-inc/RUSBF120-2/5029818) |
| Resistor 4.7k | R1 | [here](https://www.digikey.de/de/products/detail/stackpole-electronics-inc/CF18JT4K70/1741708) |
| Resistor 5.1k | R2 | |
| LED WP7113ID | D1 | [here](https://www.digikey.de/de/products/detail/kingbright/WP7113ID/1747663) |
| Capacitor 35V 1500uF | C1 | [here](https://www.digikey.de/de/products/detail/rubycon/35ZLH1500MEFC16X20/3564410) |
| Capacitor 24V 1uF | C2 | [here](https://www.digikey.de/de/products/detail/w%C3%BCrth-elektronik/860020672005/5727088) |
| Capacitor 5V 10uF | C3, C4 | [here](https://www.digikey.de/de/products/detail/w%C3%BCrth-elektronik/860010472002/5726873) |
| Step down converter MEZD71201A-G | J6 | [here](https://www.digikey.de/de/products/detail/monolithic-power-systems-inc/MEZD71201A-G/6823821) |
| Step down converter socket | J6 | e.g. [here](https://www.digikey.de/de/products/detail/sullins-connector-solutions/PPTC031LFBN-RC/810143) |

For power supply i used a bunch of AA batteries.

The pump is a Blanko 38-06. E.g. from [Amazon](https://www.amazon.de/Noname-Universelle-Wasserpumpe-Pumpe-min/dp/B002WZM3II/ref=cm_cr_srp_d_product_top?ie=UTF8).

## Instructions

1. Solder everything together
2. install esphome and configure it with GPIO5 for the output
3. Have fun

