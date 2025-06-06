FROM rocker/rstudio

RUN apt-get update && apt-get install -y \
    libudunits2-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev


RUN R -e "install.packages('remotes')"

RUN R -e "remotes::install_github('harphub/meteogrid')"
RUN R -e "remotes::install_github('harphub/harpIO')"
RUN R -e "remotes::install_github('harphub/harpPoint')"
RUN R -e "remotes::install_github('harphub/harpVis')"
RUN R -e "remotes::install_github('harphub/harp')"

RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('ggtext')"
RUN R -e "install.packages('sf')"
