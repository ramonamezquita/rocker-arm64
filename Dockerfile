# This image extends from `rocker/rstudio` and adds 
# - tidyverse packages & devtools
# - tex & publishing-related package
#
# Docker images built from rocker repository provide a directory
# of installation scripts. This allows users to extend images by 
# selecting additional modules to install on top of any pre-built 
# images.
#
# Example usage:
# docker run rocker-arm64 -v ${PWD}:/home/rstudio -p 8787:8787 --name <container_name>

FROM rocker/rstudio
RUN /rocker_scripts/install_tidyverse.sh
RUN /rocker_scripts/install_texlive.sh
WORKDIR /home/rstudio