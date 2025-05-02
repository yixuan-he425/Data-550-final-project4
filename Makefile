# Variables
PROJECTFILES = report/report.Rmd code/figure.R code/table.R Makefile
RENVFILES    = renv.lock renv/activate.R renv/settings.json
IMAGE_NAME   = yeexuan/project_image
RMD          = report/report.Rmd
REPORT       = report/report.html

.PHONY: all install clean 

# Default target: render report/report.html
all: $(REPORT)

# Render rule—used both locally and inside the container
$(REPORT): $(RMD) data/heart.csv code/table.R code/figure.R
	@echo "→ Ensuring output/ exists…"
	mkdir -p /output
	@echo "→ Rendering R Markdown…"
	Rscript -e "rmarkdown::render('$(RMD)', output_file='/output/report.html')"



# Optional: restore renv inside container
install:
	@echo "→ Restoring renv environment..."
	Rscript -e "renv::restore(prompt=FALSE)"

# Clean up generated files
clean:
	@echo "→ Cleaning up..."
	rm -f $(REPORT)

# Host-only: build the Docker image when Dockerfile or sources change
project_image: Dockerfile $(PROJECTFILES) $(RENVFILES)
	@echo "→ Building Docker image $(IMAGE_NAME)..."
	docker build -t $(IMAGE_NAME) .
	touch $@
