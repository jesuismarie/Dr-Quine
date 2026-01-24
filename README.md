# Dr-Quine

## About This Project

This project is inspired by the **Kleene Recursion Theorem** and explores the fascinating concept of **self-replicating programs**. Your task is to write programs that output their own source code — not by reading it from disk, but by generating it internally.

The project introduces you to three different self-replicating challenges:

- **Colleen** – a simple quine (program that prints its own source).
- **Grace** – a program that writes a copy of its source to a new file.
- **Sully** – a program that generates modified copies of itself with a decreasing counter, compiles them, and executes the new instances recursively.

All three challenges must be implemented in **three different languages**:

- **C**
- **Assembly (x86)**
- **Python**

---

## Requirements

To build and run the project, make sure you have the following tools installed:

- GCC (for C programs)
- NASM & LD (for Assembly)
- Python 3
- `make` utility

---

## Usage

Each language implementation is contained in its own directory. To build C and Assembly run:

```bash
cd C		# or ASM
make
cd ./bin/<program-name>
```

To run Python, do following:

```bash
cd Python
make <program-name>
```

To clean use following command:

```bash
make clean	# To remove object files (For C and Assembly)
make fclean	# To remove generated files
```

---

## Project Structure

```
Dr-Quine/
├── C/
│	├── Colleen/
│	├── Grace/
│	└── Sully/
│
├── ASM/
│	├── Colleen/
│	├── Grace/
│	└── Sully/
│
├── Python/
│	├── Colleen/
│	├── Grace/
│	└── Sully/
│
└── README.md
```

Each subdirectory contains:

* A `Makefile`
* The source code for the respective challenge

---

Happy Quining! 🌀
