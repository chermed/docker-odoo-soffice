FROM jamotion/odoo-base
MAINTAINER Renzo Meister <rm@jamotion.ch>
RUN apt-get install -y --no-install-recommends supervisor
RUN mkdir -p /var/log/supervisor
ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf
ADD fonts /usr/share/

EXPOSE 8999
CMD ["/usr/bin/supervisord"]
