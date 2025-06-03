FROM r-base:latest

RUN apt-get update && apt-get install -y \
    libudunits2-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev

COPY install_packages.R /install_packages.R
RUN Rscript /install_packages.R