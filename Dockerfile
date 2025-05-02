FROM rocker/tidyverse

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       libgdal-dev gdal-bin \
       libproj-dev proj-data proj-bin \
       libgeos-dev \
       libudunits2-dev \
       pandoc && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /project
WORKDIR /project

RUN mkdir code
RUN mkdir output

#copy all relevant files 
COPY code code
COPY data data
COPY Makefile .
COPY report report


#be careful to copy only the essential renv files and not the renv library
COPY .Rprofile .
COPY renv.lock .
RUN mkdir renv
COPY renv/activate.R renv
COPY renv/settings.json renv

RUN Rscript -e "renv::restore(prompt=FALSE)"


CMD make && mv /output/report.html report/report.html
