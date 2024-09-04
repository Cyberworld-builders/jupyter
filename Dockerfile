FROM jupyterhub/jupyterhub

# No additional setup needed for the simplest case
# JupyterHub will run with default configurations

# Install JupyterHub and its dependencies
RUN pip install jupyterhub notebook jupyterlab
RUN pip install jupyter_core

CMD ["jupyterhub"]