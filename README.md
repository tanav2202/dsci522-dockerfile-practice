# dsci522-dockerfile-practice

This repository contains my practice for building Docker images using conda environments, as part of the DSCI 522 course assignment.

## Overview

The goal of this project is to create a Docker image based on the Jupyter minimal-notebook image that includes a pinned conda environment with Python 3.11 and essential data science packages. The Docker image is built locally and published automatically to Docker Hub via GitHub Actions.

## Repository Contents

* **Dockerfile**: Extends `quay.io/jupyter/minimal-notebook:afe30f0c9ad8` and installs packages from an explicit conda lock file.
* **environment.yml**: Defines a conda environment with Python 3.11, pandas, and numpy (version-pinned).
* **conda-linux-64.lock**: Explicit lock file generated for Linux aarch64 platform to ensure reproducible package installation.
* **.github/workflows/docker-publish.yml**: GitHub Actions workflow that builds the Docker image, tags it with git commit SHA and `latest`, and pushes it to Docker Hub upon changes to the Dockerfile or lock file.
* **LICENSE.md**: Includes MIT license for my code and attribution/license for the GitHub Actions workflow copied from the original author.

## Usage

1. Clone the repository.
2. Build the Docker image locally (optional):

   ```bash
   docker build -t tanav2202/dsci522-dockerfile-practice:local .
   ```
3. Run the Docker container with port forwarding:

   ```bash
   docker run -p 8888:8888 tanav2202/dsci522-dockerfile-practice:local start-notebook.sh
   ```
4. Access JupyterLab in your browser at [http://localhost:8888](http://localhost:8888).

## Automation

The GitHub Actions workflow automatically builds and pushes the image to Docker Hub when you push changes to the Dockerfile or conda lock file.

* Docker Hub image: [tanav2202/dsci522-dockerfile-practice](https://hub.docker.com/r/tanav2202/dsci522-dockerfile-practice)
* GitHub repo: [tanav2202/dsci522-dockerfile-practice](https://github.com/tanav2202/dsci522-dockerfile-practice)

## License

This repository is licensed under the MIT License. See LICENSE.md for details, including attribution for the GitHub Actions workflow.

---

This README is designed to be clear and focused on the assignment requirements while giving necessary instructions for use and context on automation.
