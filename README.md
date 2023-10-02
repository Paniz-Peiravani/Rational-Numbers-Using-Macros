# Rational Numbers Using Macros in MIPS

This repository contains MIPS assembly language code designed for rational number arithmetic. The code has been developed in the MARS IDE using macros to streamline and optimize the assembly process.

## Benefits of Using Macros

Using macros is advantageous for several reasons:
- It replaces repeated instructions with simple machine codes, reducing redundancy.
- It avoids typing the same code repetitively, leading to more organized and readable code.

## Operations Supported

The provided code supports the following rational number arithmetic operations:
- `add_rational`: Addition of two rational numbers.
- `sub_rational`: Subtraction of two rational numbers.
- `mul_rational`: Multiplication of two rational numbers.
- `div_rational`: Division of two rational numbers.

## User Input

The program prompts the user to enter four different integers, which are stored as `a`, `b`, `c`, and `d`. For instance, the first rational number is represented as \( \frac{a}{b} \) and the second as \( \frac{c}{d} \). Note that entering a denominator value of `0` will result in an error message.

After providing the input values, the program calculates and displays the results for addition, subtraction, multiplication, and division of the given rational numbers.
