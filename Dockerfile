FROM jupyterhub/jupyterhub

# Install JupyterHub and its dependencies
RUN pip install jupyterhub notebook jupyterlab
RUN pip install jupyter_core

# Create a non-root user
RUN useradd -m jupuser
WORKDIR /home/jupuser
USER jupuser

CMD ["jupyterhub", "-f", "/srv/jupyterhub/jupyterhub_config.py"]