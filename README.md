# Final Project 4

This repository contains all the components for Final Project 4, including data, code, and the final report.

## Directory Structure

- **data/**: Contains the dataset (`heart.csv`).
- **code/**: Contains R scripts used to generate outputs:
  - `table.R`: Code for generating the required table.
  - `figure.R`: Code for generating the required figure.
- **report/**: Contains the R Markdown file (`report.Rmd`) and the final HTML report (`report.html`).
- **Makefile**:
  - `make`: Renders `report.Rmd` into `report.html`.
  - `make install`: Restores the package environment using `renv`.
- **renv/** and **renv.lock**: Used for reproducible package management.
- **README.md**: This file.
- **fork/**: last assignment of peer grading.



## How to Generate the Final Report

1. Make sure you have **Git**, **R**, and **Make** installed on your system.
2. Clone this repository and navigate to the project root in your terminal.
3. Run the following command to restore the required R package environment:

   ```bash
   make install
