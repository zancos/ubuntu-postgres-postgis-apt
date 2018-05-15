FROM postgres:9
LABEL manteiner='zancos<zancos@hotmail.com>'


#from https://wiki.postgresql.org/wiki/Apt
ENV POSTGRESQP_KEY_FILE https://www.postgresql.org/media/keys/ACCC4CF8.asc


##Installation
WORKDIR /install-postgis
ADD $POSTGRESQP_KEY_FILE /install-postgis/key.asc
RUN apt-key add key.asc
RUN apt-get -y update
RUN apt-get -y install postgis

## cleaning
RUN apt-get purge -y --auto-remove
RUN apt-get -y autoclean

WORKDIR /
RUN rm -rf /install-postgis