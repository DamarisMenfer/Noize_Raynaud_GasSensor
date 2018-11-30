#include <TheThingsNetwork.h>
#include <SoftwareSerial.h>

SoftwareSerial loraSerial(3,2);
#define debugSerial Serial
int sensorPin = A0;
int sensorValue = 0;
float sensorValue_f = 0.0;

// Replace REPLACE_ME with TTN_FP_EU868 or TTN_FP_US915
#define freqPlan TTN_FP_EU868

TheThingsNetwork ttn(loraSerial, debugSerial, freqPlan);


void setup() {
  loraSerial.begin(57600);
  debugSerial.begin(9600);

}

void loop() {

  sensorValue=analogRead(sensorPin);
  sensorValue_f=(5./1024.)*sensorValue;
  Serial.print("Sensor : ");
  Serial.print(sensorValue_f,DEC);
  Serial.print(" V ");
  Serial.println(sensorValue,DEC);

  
  delay(1000);
 

}
