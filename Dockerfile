FROM quay.io/jupyter/r-notebook:2023-11-19

# Install R packages using conda from the conda-forge channel
RUN conda install --quiet --yes -c conda-forge \
    dplyr=1.0.7 \  # Example version, replace with the version you need
    ggplot2=3.3.5 \  # Example version, replace with the version you need
    && conda clean --all -f -y
