# FPGA Double Pulse Generator with LabVIEW UI

## Project Overview
This project implements a user-configurable double pulse generator using an FPGA (Cyclone III on DE0 board) and a LabVIEW user interface. The system allows the user to set timing parameters (High1 time, Low1 time, High2 time) which are sent to the FPGA via a DLP-232PC data acquisition device. The time base (microseconds or nanoseconds) is configurable.

## Features
- FPGA code developed in VHDL using Quartus II.
- LabVIEW UI to input pulse timings and control the device.
- Communication between LabVIEW and FPGA through the DLP-232PC.
- Modular project structure separating FPGA and UI code.

## Project Structure
- `VHDL_Code/`: Contains all FPGA-related source files and project files.
- `LabVIEW_UI/`: Contains LabVIEW virtual instruments (VIs) and UI files.

## Getting Started

### Requirements
- DE0 Cyclone III FPGA development board
- Quartus II software for FPGA design
- LabVIEW for UI interface
- DLP-232PC device for communication

### Usage
1. Connect DLP-232PC with the DE0 board following the schematics.
2. Load the FPGA code onto the DE0 board.
3. Open the LabVIEW UI and configure the timing parameters.
4. Use the interface to send pulse configurations to the FPGA.
5. Observe the generated pulse on the FPGA output pins using an oscilloscope.

## Future Improvements
- Add detailed error handling in LabVIEW.
- Extend FPGA design for more pulse patterns.
- Add real-time feedback from FPGA to UI.

## Author
Dimitris Oikonomou  
Email: [oik26jim@gmail.com]  
GitHub: [https://github.com/Jimaras26](https://github.com/Jimaras26)

---
