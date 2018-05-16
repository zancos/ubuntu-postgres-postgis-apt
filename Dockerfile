FROM postgres:9.6
LABEL manteiner='zancos<zancos@hotmail.com>'

##Installation
RUN apt -y update && apt -y install postgresql-9.6-postgis-2.4 postgresql-9.6-postgis-2.4-scripts --no-install-recommends

## cleaning
RUN apt purge -y --auto-remove && apt -y autoclean && rm -fr /var/lib/apt/lists/*