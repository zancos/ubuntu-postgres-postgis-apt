FROM postgres:9.6
LABEL manteiner='zancos<zancos@hotmail.com>'

##Installation
RUN apt-get -y update
RUN apt-get -y install postgresql-9.6-postgis-2.4 --no-install-recommends

## cleaning
RUN apt-get purge -y --auto-remove
RUN apt-get -y autoclean
RUN rm -fr /var/lib/apt/lists/*