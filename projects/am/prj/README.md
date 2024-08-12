# prj

This folder contains the necessary files to generate a bitstream file (.bit) for the PYNQ-ZU platform using Vivado. The project includes:
- Vivado project file (.xpr)
- Block design sources (.bd)
- Custom IP created using Vitis HLS


## Prerequisites

- Vivado Design Suite (version compatible with PYNQ-ZU)
- Vitis HLS (for creating/updating custom IP)

## Generating the Bitstream File

Follow these steps to generate the bitstream file using Vivado:

### 1. Open Vivado

Launch Vivado and open the project file:
File -> Open Project -> Navigate to vivado_project.xpr



### 2. Set Up the Project

Ensure all the necessary files are included in the project:
- Block design file (`block_design.bd`)

### 3. Validate and Synthesize the Design

- **Validate the Block Design:**
   Open the block design file and validate it to ensure there are no errors:
   Tools -> Validate Design


- **Run Synthesis:**
   Start the synthesis process:
 Flow -> Run Synthesis


### 4. Implement the Design
After synthesis, run the implementation process:
- Flow -> Run Implementation

### 5. Generate the Bitstream

Once the implementation is complete, generate the bitstream file:
- Flow -> Generate Bitstream


### 6. Export Hardware

Finally, export the hardware along with the bitstream file for use in PYNQ-ZU:
- File -> Export -> Export Hardware
- Select the option to include the bitstream.

## Using the Custom IP

To use the custom IP in your project:

1. **Create the IP:**
   If the custom IP is not already created, use Vitis HLS to synthesize and export the IP.

2. **Add IP to Vivado Project:**
   Use the Tcl script (`custom_ip.tcl`) to add the custom IP to your Vivado project:
- Tools -> Run Tcl Script -> Navigate to custom_ip.tcl

3. **Integrate IP:**
Integrate the custom IP into your block design and connect it appropriately.
