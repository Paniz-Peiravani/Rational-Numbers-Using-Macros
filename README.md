# Rational Number Arithmetic Using Macros in MIPS Assembly

This repository contains MIPS assembly language code designed for rational number arithmetic. The code has been developed in the MARS IDE using macros to streamline and optimize the assembly process.

## Benefits of Using Macros

Using macros is advantageous for several reasons:
- It replaces repeated instructions with simple machine codes, reducing redundancy.
- It avoids typing the same code repetitively, leading to more organized and readable code.

## Operations Supported

The provided code supports the following rational number arithmetic operations using Marcos:
- `add_rational`: Addition of two rational numbers.
- `sub_rational`: Subtraction of two rational numbers.
- `mul_rational`: Multiplication of two rational numbers.
- `div_rational`: Division of two rational numbers.

## Assembly Files

### `marco.asm`

- **Purpose**: This is the main assembly file where the program's logic and flow are defined.
- **Description**: It contains the `main` function, which serves as the entry point of the program. Within `main`, macros defined in `Macros_Definitions.asm` are called to perform rational number arithmetic and handle user input and error messages. This file is where the program is assembled and executed from a high-level perspective.

https://github.com/Paniz-Peiravani/Rational-Numbers-Using-Macros/blob/main/Macros.asm

### `Macros_Definitions.asm`

- **Purpose**: This file contains macro definitions, which are reusable blocks of assembly code.
- **Description**: Macros are used to encapsulate specific functionality, making the code more modular and readable. In this project, various macros are defined for tasks such as obtaining user input for rational numbers, performing arithmetic operations, printing results, and handling error messages. By placing these macros in a separate file, they can be reused throughout `marco.asm` without code duplication. This separation helps keep the code organized and maintainable.

https://github.com/Paniz-Peiravani/Rational-Numbers-Using-Macros/blob/main/Macros_Definitions.asm

## User Input

The program prompts the user to enter four different integers, which are stored as `a`, `b`, `c`, and `d`. For instance, the first rational number is represented as a\b and the second as c\d. Note that entering a denominator value of `0` will result in an error message.

After providing the input values, the program calculates and displays the results for addition, subtraction, multiplication, and division of the given rational numbers.

