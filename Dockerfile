FROM r-base:latest

RUN apt-get update && apt-get install -y \
    libudunits2-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev


RUN  apt-get install -y python3-pip 

# Install the 'remotes' package
RUN R -e "install.packages('remotes')"

RUN R -e "remotes::install_github('harphub/meteogrid')"
RUN R -e "remotes::install_github('harphub/harpIO')"
RUN R -e "remotes::install_github('harphub/harpPoint')"
RUN R -e "remotes::install_github('harphub/harpVis')"
RUN R -e "remotes::install_github('harphub/harp')"


# Install GitHub package 'harp'
# RUN R -e "remotes::install_github('harphub/harp')"

# Install CRAN package 'tidyverse'
# RUN R -e "install.packages('tidyverse')"

# Install CRAN package 'ggtext'
# RUN R -e "install.packages('ggtext')"

# Install CRAN package 'sf'
# RUN R -e "install.packages('sf')"

# Install Jupyter Notebook
# RUN pip3 install jupyter

# Expose the default Jupyter Notebook port
# EXPOSE 8888

# Set the default command to start Jupyter Notebook
# CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]