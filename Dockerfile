FROM quay.io/jupyter/r-notebook:2023-11-19

# Install R packages using conda from the conda-forge channel
RUN conda install --quiet --yes -c conda-forge \
    'dplyr=1.1.4' \  # Example version, replace with the actual desired version
    'ggplot2=3.4.4' \  # Example version, replace with the actual desired version
    && conda clean --all -f -y
