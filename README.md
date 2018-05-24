# Advanced Machine Learning Project

![Web app main page](website.png) ![Web app fullness](level.png)

This is a web app as part of the project for the product design course (Yves Bellouard at EPFL). This repository contains the code for both the web app and the code for the ESP32 microcontroller embedded in our smart trash bin.
This web app shall receive data from "Smart" trash bins, process it and provide some visualisations and predictions, in order to help EPFL cleaners.
We use Django for the back-end (Server side of the app), which is a python framework for developping web apps, and Bootstrap for the front-end (client side), which is good for handling screens with different formats (responsive design).
The communication between the ESP32 and the server is made via a REST API, detailled [here](SmartTrashBin/map/api/README.md).
For a showcase how the web app, watch the [webapp.mp4](webapp.mp4).

## Running the code

In addition to common python libraries (numpy, matplotlib, ...) this project has a few other dependencies mainly scikit. If you have trouble running this code, you can create a virtual python environment with the [requirements](o_be_rendered/requirements.txt). 

## Authors

* **Thomas Havy**
* **Antoine Weber**
