/*
 * Author: JP Meijers
 * Date: 2016-02-07
 * Previous filename: TTN-Mapper-TTNEnschede-V1
 *
 * This program is meant to be used with an Arduino UNO or NANO, conencted to an RNxx3 radio module.
 * It will most likely also work on other compatible Arduino or Arduino compatible boards, like The Things Uno, but might need some slight modifications.
 *
 * Transmit a one byte packet via TTN. This happens as fast as possible, while still keeping to
 * the 1% duty cycle rules enforced by the RN2483's built in LoRaWAN stack. Even though this is
 * allowed by the radio regulations of the 868MHz band, the fair use policy of TTN may prohibit this.
 *
 * CHECK THE RULES BEFORE USING THIS PROGRAM!
 *
 * CHANGE ADDRESS!
 * Change the device address, network (session) key, and app (session) key to the values
 * that are registered via the TTN dashboard.
 * The appropriate line is "myLora.initABP(XXX);" or "myLora.initOTAA(XXX);"
 * When using ABP, it is advised to enable "relax frame count".
 *
 * Connect the RN2xx3 as follows:
 * RN2xx3 -- Arduino
 * Uart TX -- 10
 * Uart RX -- 11
 * Reset -- 12
 * Vcc -- 3.3V
 * Gnd -- Gnd
 *
 * If you use an Arduino with a free hardware serial port, you can replace
 * the line "rn2xx3 myLora(mySerial);"
 * with     "rn2xx3 myLora(SerialX);"
 * where the parameter is the serial port the RN2xx3 is connected to.
 * Remember that the serial port should be initialised before calling initTTN().
 * For best performance the serial port should be set to 57600 baud, which is impossible with a software serial port.
 * If you use 57600 baud, you can remove the line "myLora.autobaud();".
 *
 */
#include <rn2xx3.h>
#include <SoftwareSerial.h>

int sensorPin = A0;
int sensorValue = 0;
float sensorValue_f = 0.0;

// Interruption
const byte interruptPin = 2;
volatile byte alert_state = LOW;
byte test_int = LOW;


SoftwareSerial mySerial(10, 11); // RX, TX

//create an instance of the rn2xx3 library,
//giving the software serial as port to use
rn2xx3 myLora(mySerial);

// the setup routine runs once when you press reset:
void setup()
{
  //output LED pin
  pinMode(13, OUTPUT);
  led_on();

// Interrupt initialization
  pinMode(interruptPin,INPUT);
  attachInterrupt(digitalPinToInterrupt(interruptPin),gaz_alert,CHANGE);

  // Open serial communications and wait for port to open:
  Serial.begin(57600); //serial port to computer
  mySerial.begin(9600); //serial port to radio
  Serial.println("Startup");

  initialize_radio();

  //transmit a startup message
  myLora.tx("TTN Mapper on TTN Enschede node");

  led_off();
  delay(2000);
}

void initialize_radio()
{
  //reset rn2483
  pinMode(12, OUTPUT);
  digitalWrite(12, LOW);
  delay(500);
  digitalWrite(12, HIGH);

  delay(100); //wait for the RN2xx3's startup message
  mySerial.flush();

  //Autobaud the rn2483 module to 9600. The default would otherwise be 57600.
  myLora.autobaud();

  //check communication with radio
  String hweui = myLora.hweui();
  while(hweui.length() != 16)
  {
    Serial.println("Communication with RN2xx3 unsuccessful. Power cycle the board.");
    Serial.println(hweui);
    delay(10000);
    hweui = myLora.hweui();
  }

  //print out the HWEUI so that we can register it via ttnctl
  Serial.println("When using OTAA, register this DevEUI: ");
  Serial.println(myLora.hweui());
  Serial.println("RN2xx3 firmware version:");
  Serial.println(myLora.sysver());

  //configure your keys and join the network
  Serial.println("Trying to join TTN");
  bool join_result = false;


  /*
  ABP: initABP(String addr, String AppSKey, String NwkSKey);
   * Paste the example code from the TTN console here:
   */
const char *devAddr = "2601102F";
const char *nwkSKey = "F0E9462DEEEB0332FC9CCA6A04FB522B";
const char *appSKey = "6B92C900017FD5C4DA93768A84EC6180";

  join_result = myLora.initABP(devAddr, appSKey, nwkSKey);

  /*
   * OTAA: initOTAA(String AppEUI, String AppKey);
   * If you are using OTAA, paste the example code from the TTN console here:
   */
  //const char *appEui = "70B3D57ED00001A6";
  //const char *appKey = "A23C96EE13804963F8C2BD6285448198";

  //join_result = myLora.initOTAA(appEui, appKey);


  while(!join_result)
  {
    Serial.println("Unable to join. Are your keys correct, and do you have TTN coverage?");
    delay(60000); //delay a minute before retry
    join_result = myLora.init();
  }
  Serial.println("Successfully joined TTN");

}

// the loop routine runs over and over again forever:
void loop()
{
    //led_on();
    test_int = digitalRead(interruptPin);
    Serial.println("Test :"+(String)test_int);
    // Getting the value of the sensor and ADC
    sensorValue=analogRead(sensorPin);
    sensorValue_f=(5./1024.)*sensorValue;
    //sensorValue_f = 2.514;

    // Formatage de la valeur du gaz
    int16_t gaz = (int16_t)(sensorValue_f * 1000);

    byte data[3];
    if (alert_state == 0){
      data[0] = 0x00;
    }
    else if (alert_state == 1) {
      data[0] = 0x01;
    }
    data[1] = gaz >> 8;
    data[2] = gaz & 0xFF;

    Serial.println("Value :" + (String)sensorValue_f);
    Serial.print("Payload : ");
    Serial.print(data[0],HEX);
    Serial.print(" ");
    Serial.print(data[1],HEX);
    Serial.print(" ");
    Serial.println(data[2],HEX);
    myLora.txBytes(data,sizeof(data));
    //led_off();
    delay(2000);
}

void led_on()
{
  digitalWrite(13, 1);
}

void led_off()
{
  digitalWrite(13, 0);
}

void gaz_alert() {
  alert_state =  !alert_state;
}

