#include <IRremote.h>
#include <LiquidCrystal.h>
#include <EEPROM.h>
// "+" Button ist "0xFF02FD", "-" Button ist "0xFF9867", "On/Off" ist "0xFFA25D"

//D2 = DSubPinOut9 = DSubPinIn6 = DisplayPin4 "Command"
//D3 = DSubPinOut4 = DSubPinIn2 = DisplayPin6 "enable"
//D4 = DSubPinOut8 = DSubPinIn7 = DisplayPin11 "data"
//D5 = DSubPinOut3 = DSubPinIn3 = DisplayPin12 "data"
//D6 = DSubPinOut7 = DSubPinIn8 = DisplayPin13 "data"
//D7 = DSubPinOut2 = DSubPinIn4 = DisplayPin14 "data"
//D8 = DSubPinOut6 = DSubPinIn9 = DisplayPin14 "VCC Backlight"
//D9 = MotorWicklung Orange
//D10 = MotorWicklung Gelb
//D11 = MotorWicklung Pink
//D12 = MotorWicklung Blau
//A0 = MessPin Ua
//A1 = Taster 1
//A2 = Taster 2
//A3 = freier Pin
//A5 = IR_Receiver

int command = 2;
int enable = 3;
int data1 = 4;
int data2 = 5;
int data3 = 6;
int data4 = 7;
int dBackLight = 8;


int outPorts[] = {12, 11, 10, 9};
int IR_Receiver = A5;
int messPinUa = A0;
int ButtonMin = A1;
int ButtonMax = A2;

float ua;
bool impact;
bool minHit = false;
bool maxHit = false;
int volume;
bool backlight;
unsigned long lastButton;

IRrecv irrecv(IR_Receiver);
decode_results results;
LiquidCrystal lcd(command, enable, data1, data2, data3, data4);


void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);
  pinMode(ButtonMin, INPUT);
  pinMode(ButtonMax, INPUT);
  impact = false;

  if (!volume) {
    volume = EEPROM.get(0, volume);
  } else {
    volume = 0;
  }

  //Motor
  for (int i = 0; i < 4; i++) {
    pinMode(outPorts[i], OUTPUT);
  }

  //start the IR receiver
  irrecv.enableIRIn();

  //Backlight LCD
  pinMode(dBackLight, OUTPUT);
  digitalWrite(dBackLight, HIGH);
  backlight = true;
}

void loop() {
  int readMin = digitalRead(ButtonMin);
  int readMax = digitalRead(ButtonMax);
  if ( readMin == LOW) {
    minHit = true;
    lcd.print("min");
    delay(50);
    lcd.clear();
  }
  else minHit = false;

  if (readMax == LOW) {
    maxHit = true;
    lcd.print("max");
    delay(50);
    lcd.clear();
  }
  else maxHit = false;

  if (irrecv.decode(&results)) {
    //Serial.println(results.value, HEX);
    motorControl(results.value);
    displayControl(results.value);
    irrecv.resume();
  }
  displayVolume();
  //messure();
}

void messure() {
  ua = analogRead(messPinUa) * 5.0 / 1024;
  Serial.println(ua);
  delay(50);
  if (ua < 3.3) {
    impact = false;
  } else {
    //Serial.println("ANSCHLAG");
    impact = true;
  }
}
void displayVolume() {
  lcd.setCursor(0, 0);
  lcd.print("Volume:");
  if (volume < 10) {
    lcd.setCursor(0, 1);
    lcd.print(0);
    lcd.setCursor(1, 1);
    lcd.print(volume);
  } else {
    lcd.setCursor(0, 1);
    lcd.print(volume);
  }
}

void motorControl(unsigned long buttonID) {
  switch (buttonID) {
    //Remote pressed "+"
    case 0xFF02FD:
      if (!maxHit) {
        moveSteps(true, 1 * 64);
        messure();
        //moveOneStep(true);
        if (!impact) {
          volume++;
          lcd.clear();
        } else {
          lcd.print("STOP");
        }
      } else {
        lcd.print("STOP");
      }
      EEPROM.put(0, volume);
      lastButton = buttonID;
      break;

    //Remote pressed "-"
    case 0xFF9867:
      if (!minHit) {
        moveSteps(false, 1 * 64);
        messure();
        //moveOneStep(false);
        if (!impact) {
          volume--;
          lcd.clear();
        } else {
          lcd.print("STOP");
        }
      } else {
        lcd.print("STOP");
      }
      EEPROM.put(0, volume);
      lastButton = buttonID;
      break;

    //Remote hold button
    case 0xFFFFFFFF:
      motorControl(lastButton);
      break;
  }
}


void displayControl(unsigned long buttonID) {
  if (buttonID == 0xFFA25D) {
    switch (backlight) {
      case true:
        digitalWrite(dBackLight, HIGH);
        backlight = false;
        break;
      case false:
        digitalWrite(dBackLight, LOW);
        backlight = true;
        break;
    }
  } else return;
}

void moveSteps(bool dir, int steps) {
  for (int i = 0; i < steps; i++) {
    moveOneStep(dir);
    delay(2);
  }
}

void moveOneStep(bool dir) {
  //erstellung eines bytes (8Bit) => einfacher zum shiften
  static byte out = 0x01;
  //Richtungen des Motors:
  if (dir) {
    out != 0x08 ? out = out << 1 : out = 0x01;
  } else {
    out != 0x01 ? out = out >> 1 : out = 0x08;
  }
  for (int i = 0; i < 4; i++) {
    //wenn einer der lower 4 Bits 1 ist, setze den entsprechenden Pin auf high und die anderen auf low:
    digitalWrite(outPorts[i], (out & (0x01 << i)) ? HIGH : LOW);
  }
}
