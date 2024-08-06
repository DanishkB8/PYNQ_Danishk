# build

This folder contains all the necessary files to build a Vivado project and generate a bitstream. The files included are:
- Build files
- Makefile
- Tcl script file

## Prerequisites

Before you begin, ensure you have the following software installed on your system:
- Vivado Design Suite 2020.2

## Running the Build Process
Open a terminal and navigate to the root directory of this repository. Use the following command to start the build process:

```bash
make
```

This command will:
- Run the Tcl script to create the Vivado project.
- Synthesize and implement the design.
- Generate the bitstream file.

