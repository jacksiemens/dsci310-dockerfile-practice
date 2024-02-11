FROM quay.io/jupyter/r-notebook:2023-11-19

# Install rvest package using conda
RUN conda install --quiet --yes -c conda-forge \
    r-rvest=1.0.3 \
    && conda clean --all -f -y

# Install baseballr package from CRAN
RUN R -e "install.packages('baseballr', version='1.6.0', repos='http://cran.rstudio.com/')"
