# custom-printf
custom-printf is a custom implementation of the C standard library function printf, developed as part of the 42 School curriculum. It replicates the behavior of the original printf function, handling formatted 
output conversion and variable arguments without using the standard version.

![dreamina-2025-08-04-4343-''ft_printf_ design informatique](https://github.com/user-attachments/assets/cf7c5ad5-d093-4f97-9f2a-185e32a4ac70)


# 🖨️ ft_printf – Recreating printf in C

> 🚀 A core 42 project focused on mastering variadic functions, formatted output, and low-level data manipulation in C.  
> 🛠️ This project challenges you to reimplement the legendary `printf` function from scratch.

---

## 📌 Project Description

`ft_printf` is a custom implementation of the standard C `printf` function.  
It aims to provide the same output behavior for a limited set of format specifiers without using standard library formatting tools.

You'll build a powerful function that handles **variable argument lists**, string formatting, number printing, and more — using only basic allowed functions like `write()` and `malloc()`.

---

## 🧠 What You’ll Learn

- How to use variadic functions (`va_start`, `va_arg`, etc.)
- Formatted string processing and parsing
- Type-based output handling (chars, strings, numbers, pointers)
- Working within memory constraints and Norme rules
- Building a minimal printf engine from the ground up
- Creating a static library (`libftprintf.a`)

---

## 🧾 Supported Format Specifiers

Your `ft_printf()` function must support:

| Specifier | Meaning                                |
|-----------|----------------------------------------|
| `%c`      | Print a single character               |
| `%s`      | Print a string                         |
| `%p`      | Print a pointer address (hex format)   |
| `%d`      | Print a signed decimal integer         |
| `%i`      | Print a signed decimal integer         |
| `%u`      | Print an unsigned decimal integer      |
| `%x`      | Print a lowercase hexadecimal number   |
| `%X`      | Print an uppercase hexadecimal number  |
| `%%`      | Print a literal percent symbol `%`     |

---

## 🛠️ Function Prototype

```c
int ft_printf(const char *format, ...);
```

- Takes a format string and a variable number of arguments.
- Returns the total number of characters printed.

---

## 🔧 Allowed Functions

- `write`
- `malloc`
- `free`
- Variadic macros: `va_start`, `va_arg`, `va_copy`, `va_end`

---

## 📁 Project Structure

```txt
ft_printf/
├── ft_printf.c         # Main logic for parsing and dispatch
├── ft_putchar.c        # Output a single character
├── ft_putstr.c         # Output a string
├── ft_putnbr.c         # Output numbers (int, unsigned, hex)
├── ft_utils.c          # Helper functions (lengths, converters, etc.)
├── ft_printf.h         # Header file with prototypes and includes
├── Makefile            # Compiles the library libftprintf.a
└── libftprintf.a       # The static library output
```

---

## 📄 Makefile Rules

Your Makefile must include the following:

- `all` – Build the static library
- `clean` – Remove object files
- `fclean` – Remove object files and the library
- `re` – Clean and rebuild
- `$(NAME)` – Target to build `libftprintf.a`

Compile with:

```bash
make
```

---

## 🧪 Testing

While testing is not part of the evaluation, it is **highly recommended**.  
Here are some simple examples:

```c
ft_printf("Hello %s, number: %d\n", "world", 42);
ft_printf("Pointer: %p\n", ptr);
ft_printf("Hex: %x / %X\n", 255, 255);
```

Compare your output with the original `printf()` and test edge cases.  
Use `valgrind` to ensure no memory leaks!

---

## ✅ Requirements

- ❌ No usage of standard `printf` or other formatting libraries
- ✅ Follow the 42 Norme
- ✅ Must compile with `-Wall -Wextra -Werror`
- ✅ Memory leaks are forbidden
- ❌ No global variables

---

## 👨‍💻 Author

🧑‍💻 [Abdilah Chemlal](https://github.com/A-chem)

---

## 🏁 License

This project is part of the 42 school curriculum.  
Please do not publish or share complete solutions publicly. Use this repository for educational purposes only.

---
