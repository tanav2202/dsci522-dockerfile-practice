# dsci522-dockerfile-practice

Docker setup for running JupyterLab with a locked conda environment. 

- Build the image with `docker build -t dsci522-dockerfile-practice:local .`  
- run it using `docker run -it --rm -p 8888:8888 dsci522-dockerfile-practice:local start-notebook.sh`.
-  Access JupyterLab at the URL with token printed in the container logs, typically `http://127.0.0.1:8888/lab`. 
