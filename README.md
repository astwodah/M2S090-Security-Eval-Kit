# SmartFusion2 Security Evaluation Kit RISC-V Sample Designs
Sample RISC-V Libero projects for the SmartFusion2 (M2S090) Security Evaluation Kit.

This project contains Libero projects containing FPGA designs including a RISC-V RV32IM soft processor. Programming bitstreams are also included so you don't have to run through the full FPGA design flow in order to start developing software for RISC-V.

### Design Feature
The FPGA Designs include the following features
* CoreRISCV_AXI4 RV32IM RISC-V processor 
* RISC-V debug block allowing on-target debug using openocd/GDB
* On-chip NVM used as boot/execution memory
* LPDDR memory for code/data
* User peripherals such as GPIO, Timers, UART

The memory map for each design is available within each Libero project.

### Target Hardware
Details of the features available for the SmartFusion2 (M2S090) Security Evaluation Kit are available [here](https://www.microsemi.com/products/fpga-soc/design-resources/dev-kits/smartfusion2/sf2-evaluation-kit).

### Programming The Target Device
The Programming_The_Target_Device folder includes FlashPro Express projects that can be used to program the development boards A standalone installer for FlashPro Express is available [here](https://www.microsemi.com/products/fpga-soc/design-resources/programming/flashpro#software) . Please note that you only need to install this standalone version of FlashPro Express if you do not have Libero tools installed.

* PROC_SUBSYSTEM_BaseDesign, contains a simple RISCV design which allows users to use basic peripherals such as GPIO, UART and Timers. 

### Modify The FPGA Design 
The Modify_The_FPGA_Design folder contains Libero example designs. Libero is Microsemi's FPGA design tool. You will need this tool if you wish to modify the example FPGA designs. Libero is available from [here](https://www.microsemi.com/products/fpga-soc/design-resources/design-software/libero-soc#downloads).

### Example Software Projects
A set of RISC-V example software projects are also available for these designs from the SoftConsole [page](https://github.com/RISCV-on-Microsemi-FPGA/SoftConsole).
