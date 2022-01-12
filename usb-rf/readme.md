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


# Datasheets

[nRF24L01 Datasheet](https://www.mouser.com/datasheet/2/297/nRF24L01_Product_Specification_v2_0-9199.pdf)

[STM32L432KB Datatsheet](https://www.st.com/resource/en/datasheet/stm32l432kc.pdf)

[STM32L4 Series Hardware Development](https://www.st.com/resource/en/application_note/dm00125306-getting-started-with-stm32l4-series-and-stm32l4-series-hardware-development-stmicroelectronics.pdf)