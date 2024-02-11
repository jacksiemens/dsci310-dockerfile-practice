FROM quay.io/jupyter/r-notebook:2023-11-19

# Install R packages using conda from the conda-forge channel
RUN conda install --quiet --yes -c conda-forge \
    'dplyr' \
    'ggplot2' \
    && conda clean --all -f -y
