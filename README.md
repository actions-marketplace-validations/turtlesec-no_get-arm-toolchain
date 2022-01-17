# Get Arm Toolchain GitHub Action
[![CI](https://github.com/turtlesec-no/get-arm-toolchain/actions/workflows/main.yml/badge.svg)](https://github.com/turtlesec-no/get-arm-toolchain/actions/workflows/main.yml)

Gets the Arm Toolchain

**Works on**: Linux, Windows and MacOS 

## Inputs

No inputs

## Outputs

### `version`

The version string from "arm-none-eabi-gcc --version"

### `install_dir`

The path to the direcotry where arm-none-eabi-gcc was installed

## Example usage

~~~~
    - name: Install Arm Toolchain
      id: arm
      uses: turtlesec-no/get-arm-toolchain@main

    - name: Arm Toolchain version
      run: echo "${{ steps.arm.outputs.version }}"
~~~~
