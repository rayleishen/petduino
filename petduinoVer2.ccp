int led_pair11=50;
int led_pair12=49;
int led_pair21=48;
int led_pair22=47;

int led_power=46;

int switch1=52;
int switch2=53;

int steps = 0;
int duration = 0;
int counter = 0;

#include <Wire.h>
#include <Adafruit_MotorShield.h>
#include "utility/Adafruit_PWMServoDriver.h"

Adafruit_MotorShield AFMS = Adafruit_MotorShield(); 

Adafruit_StepperMotor *myMotor = AFMS.getStepper(200, 1);

void setup() {
  Serial.begin(9600);
  pinMode(led_pair11, OUTPUT);
  pinMode(led_pair12, OUTPUT);
  pinMode(led_pair21, OUTPUT);
  pinMode(led_pair22, OUTPUT);
  pinMode(led_power, OUTPUT);

  pinMode(switch1, INPUT);
  pinMode(switch2, INPUT);

  myStepper.setSpeed(60);

}


void loop() {
  if(switch1 == HIGH){
    digitalwrite(led_pair11, HIGH)
    digitalwrite(led_pair12, LOW)
    steps=100;
  }
  else{
    digitalwrite(led_pair11, LOW)
    digitalwrite(led_pair12, HIGH)
    steps=20;
  }
  if(switch2 == HIGH){
    digitalwrite(led_pair21, HIGH)
    digitalwrite(led_pair22, LOW)
    duration=100;
  }
  else{
    digitalwrite(led_pair21, LOW)
    digitalwrite(led_pair22, HIGH)
    duration=20;
  }

  if(counter == duration){
    myStepper.step(steps, FORWARD, microstep);
  }

  counter++;

  delay(1000);

}



