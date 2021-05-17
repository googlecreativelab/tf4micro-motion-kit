# FAQ

**What exactly is being transferred when I “connect”?**<br/>
When you’re connecting the board to your computer, a pre-trained Tensorflow Lite machine learning model gets transferred over BLE onto the device. The sketches that are uploaded to the Arduino include a common TensorFlow Lite for Microcontrollers model architecture. The different experiment websites change the behavior of the sketch by changing the model to one specifically made for the experience. 

**What if I’m having issues connecting via bluetooth?**<br/>
If you are having issues connecting try the following: 
1. Make sure your browser (Chrome or Edge) supports Bluetooth and it is enabled.
2. Make sure your device (laptop, phone, etc) supports Bluetooth and that it is working and enabled.
3. Refresh the web page, unplug the Arduino power cable and then plug it back in to reset, then try connecting again.

*NOTE: If you’re using a managed device, like a computer from school or work, your device policy may prevent BLE pairing.*

**My board isn’t showing up on my computer, even though it’s plugged in. What should I do?**<br/>
Try unplugging the Arduino power cable and then plug it back in to reset. Make sure you see the RGB LED blink red, green, blue in a sequential order.

**The model isn’t getting my movements right. What should I do?**<br/>
The way you move may be different from the data we used to pre-train the model. Different people move differently. That’s why we created [Tiny Motion Trainer](https://experiments.withgoogle.com/tiny-motion-trainer/view), which lets you train a custom model based on the way you move. 

**Do you have plans to support other boards?**<br/>
We made these projects to work specifically with the Arduino Nano 33 BLE, and we currently don’t have plans to expand support. However, all of the code is open sourced, so you can remix or modify as needed. 

**Where should I go from here if I want to make my own model or project?**<br/>
You can create your own model in several different ways. Check out these links: 

*   [Experiments Collection](https://experiments.withgoogle.com/collection/tfliteformicrocontrollers) - Inspiration and more resources
*   [Tiny Motion Trainer](https://experiments.withgoogle.com/tiny-motion-trainer/view) - Code-free motion trainer for microcontrollers
*   [Teachable Machine](https://teachablemachine.withgoogle.com/) - Code-free image model trainer
*   [Tensorflow Lite for Microcontrollers](https://www.tensorflow.org/lite/microcontrollers) - Full documentation 
*   [Free Harvard EdX Course](https://www.edx.org/professional-certificate/harvardx-tiny-machine-learning) - In-depth course on TensorFlow Lite for Microcontrollers and the TinyML Ecosystem

**What sensors do the experiments use?**<br/>
The IMU is a LSM9DS1. It is a 3-axis accelerometer, 3-axis gyroscope and 3-axis magnetometer. This chip, made by ST Microelectronics, is a standard component supported by our library ArduinoLSM9DS1. Read more here: https://www.arduino.cc/en/Guide/NANO33BLESense

**How do you shrink a TensorFlow model to fit on a microcontroller?**<br/>
Post-training quantization is a conversion technique that can reduce model size while also improving CPU and hardware accelerator latency, with little degradation in model accuracy. You can quantize an already-trained float TensorFlow model when you convert it to TensorFlow Lite format using the TensorFlow Lite Converter. Read more here: https://www.tensorflow.org/lite/performance/post_training_quantization
