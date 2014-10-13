FROM docker.jamotion.ch/odoo-base
MAINTAINER Renzo Meister <rm@jamotion.c>
RUN apt-get install -y --no-install-recommends supervisor
RUN mkdir -p /var/log/supervisor
ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf

EXPOSE 8999
CMD ["/usr/bin/supervisord"]