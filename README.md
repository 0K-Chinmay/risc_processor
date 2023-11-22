# 8-bit RISC Processor in SystemVerilog

## Overview

This repository contains the SystemVerilog implementation of an 8-bit Reduced Instruction Set Computing (RISC) processor. The processor is designed for simplicity and efficiency, making it suitable for various embedded system applications.

## Features

- 8-bit data path
- Reduced Instruction Set for streamlined operation
- Modular and scalable architecture
- Written in industry-standard SystemVerilog

## Directory Structure

- `src/`: Contains the SystemVerilog source code for the processor.
- `testbench/`: Includes testbenches to verify the functionality of the processor.
- `sim/`: Output directory for simulation files.
- `docs/`: Documentation related to the processor's design and usage.

## Getting Started

### Prerequisites

- [Simulator](simulator_link): Install a SystemVerilog simulator such as [ModelSim](https://www.mentor.com/products/fv/modelsim/) or [VCS](https://www.synopsys.com/verification/simulation/vcs.html).

### Simulation

1. Clone the repository:

    ```bash
    git clone https://github.com/0K-Chinmay/risc_processor.git
    cd risc_processor
    ```

3. View simulation results and waveforms using vivado.

## Architecture

The processor follows a Harvard architecture with separate instruction and data memory. It consists of the following main components:

- Control Unit
- ALU (Arithmetic Logic Unit)
- Register File
- Data Memory
- Program Counter (PC)

## Testing

The `tb/` directory includes testbenches to validate the correctness and performance of the processor. To run the tests, follow the instructions in the respective directories.

