# Makefile

# Variables
REPORT = report.html
RMD = report/report.Rmd

# Default target: build the final report
all: $(REPORT)

# Build the report: depends on the Rmd file, data, and code files
$(REPORT): $(RMD) data/heart.csv code/table.R code/figure.R 
	# Render the R Markdown file into an HTML report 
	Rscript -e "rmarkdown::render('$(RMD)', output_file='$(REPORT)')"

# Clean: remove the generated report file
clean:
	rm -f $(REPORT)

# renv : make install rule to restore the environment
.PHONY: install

install:
	Rscript -e "renv::restore(prompt = FALSE)"