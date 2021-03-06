# Install Odoo15 for Paul&Ernst dev mode

## System requirements

* Docker - https://docs.docker.com/desktop/windows/install/
* Git (optional) - https://git-scm.com/downloads

## Initialize container

### Download Project

Get to your project path and execute:

``git clone https://github.com/Skimortal/odoo-docker-pe.git``

### Enterprise Edition

Download the enterprise edition you got from your administrator and add it to the ``enterprise`` folder.

### Addons

Download/Ask for the addons that are listed as dependencies in the aleks_init Addon. If you need different addons just adapt the dependencies in the manifest file.

### Load/start the containers and images

``docker-compose up -d``

Following containers will be installed:

* Odoo 15
* PostgreSQL Database
* PgAdmin 4 (Accessible via ``http://localhost:5050/``)

### Open the browser

``http://localhost:8069/web/database/selector``

and create a database with the following credentials

* Master Password: ``root``
* Database Name: ``odoo``
* Email: ``admin@admin.com`` (use whatever you want and stick to it)
* Password: ``root`` (use whatever you want and stick to it)
* Demo data: ``Check``
* Language, country, etc. you can set up as you wish

### Setup enterprise edition

Klick on ``Apps`` and search for "scrimo". The "Paul&Ernst CRM Extension" should be installed to be able to Activate development mode.
Afterwards search for "aleks_init" and install this addon - all depending addons will be installed automatically.

### Load all modules

* Go to shell and type ``docker exec -ti odoo_web /bin/bash``
* Execute command ``odoo -u all -d odoo``
* Close the command with ``CTRL + C``

You should be all set up and work with the ERP system locally.