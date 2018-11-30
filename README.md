# MOSH
#### Arduino Project in 5th year ISS at INSA Toulouse

## Overview
This repository contains the work produced during the course of Microcontroler and Open-Source Hardware (MOSH) of the 5th year Innovative Smart Systems (ISS) at INSA Toulouse. This work was produced by Alex Noize and Mathieu Raynaud.

The aim of this project was to design a complete PCB (Printed Circuit Board) implementing a double layer transimpedance amplificator assembly. This circuit is then used plugged to an Arduino board and a LoRa antenna to collect data from a gaz sensor and send it through a LoRa network. The project is located [here](https://github.com/AlexNoize/MOSH/tree/master/KiCad/Shield_Gas_Sensor/Shield_Gas_Sensor_Final).

## PCB schematic
Let's first have a look to the electrical circuit:

![alt text](https://github.com/AlexNoize/MOSH/blob/master/Screens/Scheme.PNG "Electrical scheme")

On the center of the image, the double layer transimpedance circuit implements several functionalities: 
* On the left of the scheme, the entry resistor (R1) protect the operational amplifier from the electrostatic discharges, and is associated to the C1 capacitor to filter the voltage noise.
* The C1 capacitor is also associated to the R2 resistor to filter the current noise.
* The R3 resistor is used to adapt our assembly to the correct calibre.
* At the output of the amplifier, the C2 capacitor is associated to the R4 resistor to create an active filter.
* Then, the R5 resistor and the C4 capacitor constitute a low-pass filter at the output of the assembly.
* Finally, the C3 capacitor filter the noise coming from the 5V voltage input.

We also have 3 other schemes on the picture which are:
* The RN2483 LoRa transceiver scheme on the left-top of the scheme
* The gas sensor scheme on the top of the scheme
* The Arduino Uno shield schematic on the right of the scheme
These components are required on the scheme because they need to be considered as soon as our PCB needs to communicate with them.

## PCB footprint on KiCad
Now, let's study the footprint generated with KiCad:

![alt text](https://github.com/AlexNoize/MOSH/blob/master/Screens/PCB.PNG "PCB footprint")

On the footprint above, we made the connections between all the needed pins of our board.

To be able to put our routes on only one face of the PCB, we had to add a ground layer on the entire surface of the PCB, so that we didn't need anymore to connect the ground-connected pins each others. This was also done for economical purposes.

Finally, we can see that two pairs of pins are still not connected on the footprint. In fact, these are two pairs of pins which are directly connected to the Arduino, and they have the same potential but they are already connected through the Arduino Uno.

## PCB 3D view
Finally, here are the generated 3D views for our PCB:

![alt text](https://github.com/AlexNoize/MOSH/blob/master/Screens/PCB_3D_RECTO.PNG "PCB foreground 3D view")

![alt text](https://github.com/AlexNoize/MOSH/blob/master/Screens/PCB_3D_VERSO.PNG "PCB background 3D view")

## Conclusion
The knowledge acquired during our courses allowed us to create with KiCad a PCB able to be plugged on an Arduino Uno, and to receive a gas sensor and a LoRa transceiver.

Now the next step is the print of the PCB and the creation of the gas sensor to implement the complete system.
