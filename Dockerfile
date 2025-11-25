FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-aarch64.lock /tmp/conda-linux-aarch64.lock
RUN mamba install --yes --file /tmp/conda-linux-aarch64.lock && mamba clean --all -f -y

