# ft_printf

A custom implementation of the C standard library function `printf`, developed as part of the 42 School curriculum.

This project recreates the core behavior of `printf` from scratch in C, without using the original `printf` function or external formatting libraries. It focuses on variadic functions, format-string parsing, type conversion, low-level output, and static library development.

---

## Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [Supported Conversions](#supported-conversions)
- [Function Prototype](#function-prototype)
- [Project Structure](#project-structure)
- [Compilation](#compilation)
- [Usage](#usage)
- [Example](#example)
- [Technical Concepts](#technical-concepts)
- [Project Requirements](#project-requirements)
- [Author](#author)
- [License](#license)

---

## About the Project

The goal of `ft_printf` is to reproduce the behavior of the standard C `printf` function for a defined set of conversion specifiers.

The function accepts a format string followed by a variable number of arguments. It analyzes the format string, identifies conversion characters, retrieves the corresponding arguments, and writes the formatted output to standard output.

This implementation is compiled into a static library named:

```text
libftprintf.a
```

The project is implemented using low-level C functions and follows the coding standards required by the 42 School curriculum.

---

## Features

- Custom implementation of `printf`
- Support for variadic arguments
- Format-string parsing
- Character, string, integer, unsigned integer, hexadecimal, and pointer output
- Correct return value containing the number of printed characters
- Static library generation
- Modular source code organization
- Compilation with strict compiler flags
- No dependency on the standard `printf` function

---

## Supported Conversions

| Conversion | Description |
|------------|-------------|
| `%c` | Prints a single character |
| `%s` | Prints a string |
| `%p` | Prints a pointer address in hexadecimal format |
| `%d` | Prints a signed decimal integer |
| `%i` | Prints a signed decimal integer |
| `%u` | Prints an unsigned decimal integer |
| `%x` | Prints an unsigned hexadecimal integer using lowercase letters |
| `%X` | Prints an unsigned hexadecimal integer using uppercase letters |
| `%%` | Prints a literal percent sign |

---

## Function Prototype

```c
int ft_printf(const char *format, ...);
```

### Parameters

- `format`: A string containing regular characters and conversion specifiers.
- `...`: A variable number of arguments corresponding to the conversion specifiers.

### Return Value

The function returns the total number of characters written to standard output.

---

## Project Structure

```text
42-Cursus-ft_printf/
├── en.subject.pdf
├── README.md
└── src/
    ├── Makefile
    ├── ft_printf.c
    ├── ft_printf.h
    ├── ft_putadr.c
    ├── ft_putchar.c
    ├── ft_puthex.c
    ├── ft_putnbr.c
    ├── ft_putstr.c
    └── ft_unsigned_putnbr.c
```

### Source Files

| File | Description |
|------|-------------|
| `ft_printf.c` | Main format-string parser and conversion dispatcher |
| `ft_printf.h` | Header file containing declarations and required includes |
| `ft_putchar.c` | Handles character output for `%c` |
| `ft_putstr.c` | Handles string output for `%s` |
| `ft_putnbr.c` | Handles signed decimal output for `%d` and `%i` |
| `ft_unsigned_putnbr.c` | Handles unsigned decimal output for `%u` |
| `ft_puthex.c` | Handles hexadecimal output for `%x` and `%X` |
| `ft_putadr.c` | Handles pointer address output for `%p` |
| `Makefile` | Builds and manages the `libftprintf.a` static library |

---

## Compilation

Navigate to the `src` directory and run:

```bash
cd src
make
```

This generates the static library:

```text
libftprintf.a
```

### Available Makefile Commands

| Command | Description |
|---------|-------------|
| `make` | Compiles the project and creates `libftprintf.a` |
| `make clean` | Removes object files |
| `make fclean` | Removes object files and the static library |
| `make re` | Performs a complete rebuild |

The project is compiled using strict flags:

```text
-Wall -Wextra -Werror
```

---

## Usage

To use `ft_printf` in another C project, include the project header and link the static library during compilation:

```bash
cc -Wall -Wextra -Werror main.c src/libftprintf.a -I src -o program
```

Include the header in your source file:

```c
#include "ft_printf.h"
```

---

## Example

```c
#include "ft_printf.h"

int main(void)
{
    int number;
    int value;

    number = 42;
    value = 255;

    ft_printf("Hello, %s!\n", "world");
    ft_printf("Character: %c\n", 'A');
    ft_printf("Signed number: %d\n", number);
    ft_printf("Integer: %i\n", number);
    ft_printf("Unsigned number: %u\n", 4294967295u);
    ft_printf("Lowercase hexadecimal: %x\n", value);
    ft_printf("Uppercase hexadecimal: %X\n", value);
    ft_printf("Pointer address: %p\n", &number);
    ft_printf("Percentage: %%\n");

    return (0);
}
```

Example compilation:

```bash
cc -Wall -Wextra -Werror main.c src/libftprintf.a -I src -o test_printf
./test_printf
```

---

## Technical Concepts

This project provides practical experience with:

- Variadic functions and macros:
  - `va_start`
  - `va_arg`
  - `va_end`
- Format-string parsing
- Type conversion
- Decimal and hexadecimal number systems
- Pointer representation
- Recursive number printing
- Low-level output using `write`
- Static library creation
- Modular C project organization
- Memory and error management
- Compliance with the 42 School Norm

---

## Project Requirements

The implementation follows the main requirements of the 42 School `ft_printf` project:

- The standard `printf` function must not be used.
- External formatting libraries are not allowed.
- The project must be written in C.
- The project must compile without warnings or errors.
- The code must follow the 42 School coding standards.
- The function must return the number of characters printed.
- The required conversion specifiers must be supported.
- The implementation must be provided as a static library.
- No unnecessary global variables should be used.

---

## Testing

The output of `ft_printf` can be compared with the standard `printf` function using equivalent test cases.

Useful test cases include:

- Empty strings
- Multiple conversion specifiers
- Negative numbers
- Zero values
- Maximum and minimum integer values
- Null strings
- Null pointers
- Lowercase and uppercase hexadecimal output
- Literal percent signs
- Long format strings
- Mixed text and conversions

Example comparison:

```c
printf("Number: %d, Hex: %x\n", 42, 42);
ft_printf("Number: %d, Hex: %x\n", 42, 42);
```

---

## Author

**Abdilah Chemlal**

- GitHub: [@A-chem](https://github.com/A-chem)

---

## License

This project was created for educational purposes as part of the 42 School curriculum.

The repository is intended to demonstrate the implementation process and concepts involved in recreating a formatted-output function in C.
