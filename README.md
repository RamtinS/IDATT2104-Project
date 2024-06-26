# Integrated circuits project
This repository is the result of the voluntary assignment in the Network Programming course at NTNU, IDATT2104. The assignment was to create a video lecture on the integrated circuits FPGA and ASIC. In this repository, you will find code examples that are described in the video lectures.

The examples include, among others:
* An half-adder.
* Cross product with vectors.
* Scalar product.
* An implementation of parallelization.
* An implementation of decimal numbers.

The code examples are written using the HDL languagem Verilog and simulated using Icarus Verilog.

## Team
* Jeffrey Yaw Annor Tabiri
* Ramtin Forouzandehjoo Samavat

## Instructions for running the code examples

### Prerequisites
To clone and simulate instructions written in Verilog, [Icarus Verilog](https://bleyer.org/icarus/) must be downloaded.

### MacOS
1. Install Homebrew by running the following command in the terminal:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. After Homebrew is installed, install Icarus Verilog by running the following command in the terminal:
```
brew install icarus-verilog
```
3. To check if the installation is completed, run this command in the terminal:
```
iverilog
```

If the installation was successful, you should see an output similar to this:

```
iverilog: no source files.

Usage: iverilog [-EiRSuvV] [-B base] [-c cmdfile|-f cmdfile]
                [-g1995|-g2001|-g2005|-g2005-sv|-g2009|-g2012] [-g<feature>]
                [-D macro[=defn]] [-I includedir] [-L moduledir]
                [-M [mode=]depfile] [-m module]
                [-N file] [-o filename] [-p flag=value]
                [-s topmodule] [-t target] [-T min|typ|max]
                [-W class] [-y dir] [-Y suf] [-l file] source_file(s)

See the man page for details.
```

### Windows
1. To install Icarus Verilog, download the latest version directly from their official website: [Icarus Verilog](https://bleyer.org/icarus/).

2. Run the installation program and follow the instructions to complete the installation.

3. To check if the installation is completed, run the iverilog command:
```
iverilog
```
If the installation was successful, you should see an output similar too the one above in the installation for Mac.


## Installing
1. First, you need to clone the project. You can do this by typing the following command in the terminal in a suitable directory:
```
git clone git@github.com:RamtinS/IDATT2104-Project.git
```

2. Navigate to the project using the following command:
```
cd IDATT2104-Project
```

3. Navigate to the directory for one of the examples, for instance half_adder:
```
cd .\half_adder\
```

4. To run the logical design, you can execute the following command:
```
vvp .\half_adder_tb.vvp
```

5. If you modify the Verilog file or the testbench, you can upload the new configuration design to be run using the following method:
```
iverilog -o half_adder_tb.vvp .\half_adder_tb.v
```

To run Verilog files that require external modules, specifically those located in the float and dot_prod directories, you need to include these directories in your compilation command:
```
iverilog -o output_file.vvp test_bench.v module.v
```
6. To run the program, execute the following command from step 4.

## Acknowledgements
A special thanks to our subject teacher for creating a creative assignment. 
