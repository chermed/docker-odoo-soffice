LibreOffice Headless
====================

Docker container running LibreOffice headless
---------------------------------------------

This container will provide LibreOffice in headless mode on Port 8999.
It is made for using aeroo reports, wich requires LibreOffice based on Python 2.7.

To start this container simply write:

    docker run -d --name main.soffice -h soffice jamotion/odoo-soffice
