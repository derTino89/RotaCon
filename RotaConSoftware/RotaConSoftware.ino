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

//LCD PINS:
int command = 2;
int enable = 3;
int data1 = 4;
int data2 = 5;
int data3 = 6;
int data4 = 7;
int dBackLight = 8;


int stepper[] = {9, 10, 11, 12};
int currentStep;
int IR_Receiver = A5;
int messPinUa = A0;
int ButtonMin = A1;
int ButtonMax = A2;

//in Matrix [Zeilen][Spalten]jeweils ORANGE,GELB,PINK,BLAU......Spule1=ORANGE+PINK, spule2=GELB+BLAU

int stepMatrix[4][4] = {
  {HIGH, LOW, LOW, LOW},
  {LOW, HIGH, LOW, LOW},
  {LOW, LOW, HIGH, LOW},
  {LOW, LOW, LOW, HIGH},
};
int arrayDefault[4] = {LOW, LOW, LOW, LOW};
int outArray[4];

float ua;
float uaMin;
bool impact;
bool minHit = false;
bool maxHit = false;
int volume;
bool backlight;
unsigned long lastButton;

IRrecv irrecv(IR_Receiver);
decode_results results;
//LiquidCrystal lcd(command, enable, data1, data2, data3, data4);
LiquidCrystal lcd(2, 3, 4, 5, 6, 7);

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
  if (!currentStep) {
    currentStep = EEPROM.get(1, currentStep);
  } else {
    currentStep = 0;
  }

  //Motor
  for (int i = 0; i < 4; i++) {
    pinMode(stepper[i], OUTPUT);
  }

  //start the IR receiver
  irrecv.enableIRIn();

  //Backlight LCD
  pinMode(dBackLight, OUTPUT);
  digitalWrite(dBackLight, HIGH);
  backlight = true;
  lcd.clear();
}

void loop() {
  int readMin = digitalRead(ButtonMin);
  int readMax = digitalRead(ButtonMax);
  if ( readMin == LOW) {
    minHit = true;
    volume = 0;
    displayVolume();
  } else minHit = false;

  if (readMax == LOW) {
    maxHit = true;
  } else maxHit = false;

  if (irrecv.decode(&results)) {
    //Serial.println(results.value, HEX);
    motorControl(results.value);
    displayControl(results.value);
    irrecv.resume();
  }
  displayVolume();
}

//Steuersignale für die 4 Motorphasen:
void writeStep(int outArray[4]) {
  digitalWrite(9, outArray[0]);
  digitalWrite(10, outArray[1]);
  digitalWrite(11, outArray[2]);
  digitalWrite(12, outArray[3]);
}

void moveSteps(bool dir, int steps) {
  float lowestVoltage = 5.0;
  for (int i = 0; i < steps; i++) {
    moveOneStep(dir);
    float u=currentVoltage();
    if (u < lowestVoltage) {
      lowestVoltage = u;
    }
    delay(2);
  }
  lcd.clear();
  uaMin=lowestVoltage;
}

void moveOneStep(bool dir) {
  if (currentStep >= 0 || currentStep <= 3) {
    writeStep(stepMatrix[currentStep]);
  } else {
    writeStep(arrayDefault);
  }
  //Richtung des Steps
  (dir == true) ? (currentStep++) : (currentStep--);
  if (currentStep > 3) {
    currentStep = 0;
  } else if (currentStep < 0) {
    currentStep = 3;
  }
  EEPROM.put(1, currentStep);
}


void check() {
  if (uaMin > 2.8) {
    impact = false;
  } else {
    Serial.println("ANSCHLAG");
    impact = true;
  }
}

float currentVoltage() {
  return analogRead(messPinUa) * 5.0 / 1024;
}
void displayVolume() {
  lcd.setCursor(0, 0);
  lcd.print("Volume:");
  if (volume < 10 && volume >= 0) {
    lcd.setCursor(0, 1);
    lcd.print(0);
    lcd.setCursor(1, 1);
    lcd.print(volume);
  } else if (volume >= 10) {
    lcd.setCursor(0, 1);
    lcd.print(volume);
  } else {
    volume = 0;
    lcd.setCursor(0, 1);
    lcd.print(0);
    lcd.setCursor(1, 1);
    lcd.print(volume);
  }
}

void motorControl(unsigned long buttonID) {
  switch (buttonID) {
    //Remote pressed "+"
    case 0xFF02FD:
      if (!maxHit) {
        moveSteps(true, 1 * 64);
        Serial.println(uaMin);
        check();
        if (!impact) {
          volume++;
        } else {
          lcd.print("STOP");
          delay(2000);
          lcd.clear();
        }
      } else {
        lcd.print("MAX");
      }

      EEPROM.put(0, volume);
      lastButton = buttonID;
      break;

    //Remote pressed "-"
    case 0xFF9867:
      if (!minHit) {
        moveSteps(false, 1 * 64);
        Serial.println(uaMin);
        check();
        if (!impact) {
          volume--;
          lcd.clear();
        } else {
          lcd.print("STOP");
          delay(2000);
          lcd.clear();
        }
      } else {
        lcd.print("MIN");
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
