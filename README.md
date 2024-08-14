# PYNQ_Danishk


## Overview

The PYNQ_Danishk repository contains Jupyter notebooks and projects designed for the PYNQ-ZU board. This repository includes various examples such as an image resizer, a basic program, and a Finite Impulse Response (FIR) function accelerator. These projects showcase the integration of hardware and software using the PYNQ framework along with Vivado and Vitis HLS tools.

## Features

- **Image Resizer**: Demonstrates resizing images using the PYNQ-ZU board.
- **Basic Program**: An introductory notebook with fundamental programming concepts.
- **FIR Function Accelerator**: Implements a FIR filter accelerator to enhance signal processing performance.
- **Amplitude Modulation** : Implementing modulation of sinusoidal signal using Pynq ZU
- **Hardware Accelerated FFT** : Performing FFT(Fast Fourier Transform) using Vivado FFT IP core

## Tools Used

- **PYNQ Framework**: Provides a Python interface for programming and interacting with the PYNQ-ZU board.
- **Vivado**: Used for designing and implementing the FPGA hardware components.
- **Vitis HLS**: Utilized for high-level synthesis to convert C/C++ code into hardware descriptions for the FPGA.

## Installation

### Prerequisites

Before you begin, ensure you have the following:

- PYNQ-ZU board
- PYNQ software installed on the board
- Vivado Design Suite 2020.2
- Vitis HLS 2020.2
- Jupyter Notebook environment set up

### Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/DanishkB8/PYNQ_Danishk.git
2. **Navigate to the project directory:**
   
   ```bash
   cd PYNQ_Danishk

3. **Set up hardware designs:**

- Use Vivado to open and modify hardware design files located in the hardware directory.
- Use Vitis HLS to compile and synthesize high-level code for the FIR function accelerator.
4. **Upload notebooks to your PYNQ-ZU board:**
- Transfer the notebooks from the PYNQ_Danishk directory to the appropriate location on your PYNQ-ZU board.
5. **Open Jupyter Notebook:**
- Access Jupyter Notebook on the PYNQ-ZU board’s web interface and open the notebooks to start using them.

### Usage
**Image Resizer**
- Open the Image_Resizer.ipynb notebook.
- Follow the instructions in the notebook to resize images using the PYNQ-ZU board.
**Example Program**
- Open the Basic_Program.ipynb notebook.
- This notebook covers fundamental programming concepts and demonstrates basic examples.
**FIR Function Accelerator**
  - Open the FIR_Accelerator.ipynb notebook.
- Follow the instructions provided to use the FIR filter accelerator for signal processing tasks.

### Contributing
We welcome contributions to this project! To contribute:
1. Fork the repository.
2. Create a new branch (git checkout -b feature/YourFeature).
3. Commit your changes (git commit -m 'Add some feature').
4. Push to the branch (git push origin feature/YourFeature).
5. Open a Pull Request.
6. Please ensure you follow the contributing guidelines and adhere to the code of conduct.


### Contact
For any questions or support, please contact:

- Danishk B.
- danishkb8@gmail.com


### Acknowledgments
- Special thanks to the C-DAC(Centre for Development of Advanced Computing) for giving me the opportunity to train in their company.
- Thanks to the PYNQ community and contributors for their support and resources.
