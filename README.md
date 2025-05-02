# Final Project 8

This repository contains all the components for Final Project 8, including data, code, and the final report.

## Directory Structure

- **data/**: Contains the dataset (`heart.csv`).  
- **code/**: Contains R scripts used to generate outputs:  
  - `table.R`: Code for generating the required table.  
  - `figure.R`: Code for generating the required figure.  
- **report/**: Contains the R Markdown file (`report.Rmd`) and the final HTML report (`report.html`).  
- **Dockerfile**: Builds a Docker image for automated report rendering.  
- **Makefile**:  
  - `make`: Builds the Docker image if needed and renders `report.Rmd` into `report/report.html`.  
  - `make clean`: Removes generated files.  
- **renv/** and **renv.lock**: Used for reproducible package management.  
- **README.md**: This file.

## How to Build the Docker Image

1. Ensure you have **Docker** installed on your system.  
2. From the project root, run:
   ```bash
   docker build  -t yeexuan/project_image .
   
   ```
  
## How to create the report
1.Ensure you have Git, R, and Make installed on your system.

2.Clone this repository and navigate to the project root:

  ```bash

  git clone https://github.com/yixuan-he425/final_project_8
  ```

3.Finalizing the automated build:
```bash
  docker run  -v /"$(PWD)/report:/project/report" yeexuan/project_image
  ```
5.Open report/report.html  to view the final report.


