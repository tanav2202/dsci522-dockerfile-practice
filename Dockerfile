FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy the lock file
COPY conda-linux-64.lock /tmp/conda-linux-aarch64.lock

# Install packages from the explicit lock file
RUN conda install --quiet --file /tmp/conda-linux-64.lock && \
    conda clean --all -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"