# jupyterhub_config.py
c.JupyterHub.spawner_class = 'simple'
c.JupyterHub.authenticator_class = 'jupyterhub.auth.DummyAuthenticator'
c.DummyAuthenticator.password = "password"  # Set a simple password for all users
c.Authenticator.admin_users = {'admin'}  # Set 'admin' as an admin user
c.Spawner.cmd = ['jupyter-labhub', '--allow-root']