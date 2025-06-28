# 🚦 Traffic Light Controller using Verilog and EDA Playground

## 📌 Project Overview

This project simulates a Traffic Light Controller for a T-intersection using Verilog HDL. Designed to manage traffic flow efficiently, the controller cycles through standard Red, Yellow, and Green states based on a clock input and timing logic. The simulation was performed using [EDA Playground](https://www.edaplayground.com/), a cloud-based platform for HDL design and testing.

## 🎯 Objective

To design and simulate a finite state machine (FSM)-based traffic control system that:
- Ensures safe and timed switching of lights at a T-junction.
- Minimizes traffic congestion by managing two road directions.

## 🛠 Technologies Used

- **Verilog HDL** – for hardware logic design  
- **EDA Playground** – for online simulation and waveform visualization  
- **FSM (Finite State Machine)** – for control logic implementation

## 📁 Files Included

Traffic Light Controller/
├── traffic_light_controller.v # Main Verilog code for traffic light FSM
├── testbench.v # Testbench to simulate the traffic controller
├── waveform.png # Screenshot of waveform simulation results
├── README.md # This file


## 🔄 Working Principle

- Implements a state machine with defined states: RED, GREEN, YELLOW
- Uses a counter and clock to handle light duration
- The controller ensures only one direction gets GREEN at a time

## ✅ How to Run

1. Visit [EDA Playground](https://www.edaplayground.com/)
2. Paste the contents of `traffic_light_controller.v` and `testbench.v`
3. Select a simulator like **Icarus Verilog**
4. Click **Run** to simulate and observe waveform outputs

## 🧠 Key Features

- Modular and readable Verilog code
- Parameterized timing logic for flexibility
- Designed for extensibility to real-time hardware applications

## 👨‍💻 Author

- **Soumya Ranjan Sahu**  
  B.Tech, Electronics & Instrumentation  
  National Institute of Technology, Rourkela
