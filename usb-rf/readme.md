# RF-USB - Universal Receiver

# Components

## STM32L432KB
- include USB interface within the chip
- ultra low power (minimal processing is required, just need an interface
 between USB and RF radio. 

## RF24L01
- 2.4 GHz Transceiver
- low cost 
- has been seen in many Arduino projects, so can use some existing librar
ies.
- SMA connector used as to not limit the antenna selection, and reducing
form factor of PCB. 

# PCB Design 

## Layers
The RF-USB uses a 4-layer PCB broken down per the following: 
- 1st Layer: Signals
- 2nd Layer: Ground
- 3rd Layer: Power (3V3)
- 4th Layer: Signal

## Design Guidelines
1. De-coupling capacitors will be placed as close to each device as possible. 
1. ESD protection device shall be as close to the USB port as possible.
1. Each ground and power pad shall have a via.

# Documentation

[nRF24L01 Datasheet](https://www.mouser.com/datasheet/2/297/nRF24L01_Product_Specification_v2_0-9199.pdf)

[STM32L432KB Datatsheet](https://www.st.com/resource/en/datasheet/stm32l432kc.pdf)

[STM32L4 Series Hardware Development](https://www.st.com/resource/en/application_note/dm00125306-getting-started-with-stm32l4-series-and-stm32l4-series-hardware-development-stmicroelectronics.pdf)

[JCLPCB Design Capabilities](https://jlcpcb.com/capabilities/Capabilities)