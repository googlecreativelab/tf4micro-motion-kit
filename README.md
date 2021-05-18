# TF4Micro Motion Kit

This repo contains the Arduino Sketch and a Web Bluetooth API for loading models and running inference on the device.

## Install and Run on Arduino

Flashing: Using the Arduino Nano Sense 33 BLE

1. Install the [Arduino IDE ](https://www.arduino.cc/en/software "Arduino IDE")

2. Setup Arduino board:
-  Plug in the board
- Install the board by navigating to Tools > Board > Boards Manager and search for  Arduino Mbed OS Nano Boards. Full instructions (including drivers required for Windows) [here.](https://www.arduino.cc/en/Guide/NANO33BLESense/ "Arduino Guide")
- FAQ for connection problems can be found [here.](https://github.com/tinyMLx/appendix/blob/main/ArduinoFAQ.md "Arduino Guide") 
- After the board is installed, select it under to Tools > Board >  Arduino Mbed OS Nano Boards > Arduino Nano 33 BLE
![Arduino board](/readme_images/board.png)

- Select the port by navigating to Tools -> Port -> dev/cu... (Arduino Nano 33 BLE)
![Arduino Port](/readme_images/port.png)


3. Install Arduino libraries 
-  Navigate to Tools > Manage Libraries
- Search for and install:
- Arduino_LSM9DS1
- ArduinoBLE
- Arduino_TensorFlowLite
![Manage libraries](/readme_images/library.png)
![TensorFlow Lite Library](/readme_images/tflib.png)



4. Open the sketch and flash
- Download the latest release [here](https://github.com/googlecreativelab/tf4micro-motion-kit/releases/latest)
- Open the **arduino/tf4micro-motion-kit** <folder> and double click on <tf4micro-motion-kit.ino> file
- Click the Right arrow in the top left corner to build and upload the sketch.  
![Arduino Port](/readme_images/buttons.png)
 

- **Warning**: This process may take a few minutes. Also, warnings may populate but the upload should still succeed in spite of them.
- If the sketch is installed, the LED on the board should flash red and green. 


5. Go to the URL related to the experiment. The URL can be found below and play!

----

## Using the TensorFlow Lite for Microcontrollers Kit by SparkFun
 
The board that comes with the TensorFlow Lite for Microcontrollers Kit by SparkFun comes preflashed with a sketch that will work with some of the experiments right out of the box. If you are using one of the “TensorFlow Lite for Microcontrollers” kits and you just want to jump right into playing with the experiments then you can simply connect your arduino to a power source (USB or Battery) and connect to one of the following experiment URLs:
- [Air Snare](https://experiments.withgoogle.com/air-snare/view "Air Snare")
- [Finger User Interface (FUI)](https://experiments.withgoogle.com/finger-user-interface/view "FUI")
- [Tiny Motion Trainer](https://experiments.withgoogle.com/tiny-motion-trainer/view "Tiny Motion Trainer")
----

## Web API Usage

Either use the button.js module to create a button that will connect and transfer your model togheter with your setting to the arduino over BLE.

Example:
```
import connectButton from "./tf4micro-motion-kit/web/button";

function handleGesture({index, value, velocity}){
   console.log(index, value, velocity);
}

function handleTransferProgress(progress){
  console.log(`Loaded ${Math.round(progress * 100)}%`);
}

connectButton(containerElement, {
   model: "./model.tflite",
   numClasses: 4,
   threshold: 0.169,
   numSamples: 10,
   captureDelay: 125,
   onGesture: handleGesture,
   onTransferProgress: handleTransferProgress,
   useMagnetometer: true
 }).addEventListener("click", () => {
   soundManager.userInit();
 });
```
or

Use the full api module (either by importing index.js or whatever functions you need from api.js).

## Run Test Pages:
1. Build and upload the Sketch in the arduino folder to your BLE 33 Nano Sense
2. Run: 
    * `$ cd web`
    * `$ sh serv.sh`

You need live-server, python2 or 3 installed

Then go to localhost:9090 in your browser and follow instructions

----

## Note

This is not an official Google product, but a collection of experiments that were developed at the Google Creative Lab. This is not a library or code repository that intends to evolve. Instead, it is a snapshot alluding to what’s possible at this moment in time.

We encourage open sourcing projects as a way of learning from each other. Please respect our and other creators’ rights, including copyright and trademark rights when present, when sharing these works and creating derivative work. If you want more info on Google's policy, you can find that [here.](https://about.google/brand-resource-center/ "Google Brand Resource Center")

----
