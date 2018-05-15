# Docker PostgreSQL-PostGIS-sfcgal

expand on https://github.com/docker-library/postgres

**includes :**

* PostgreSQL 9.6.9 (last)
* PostGIS 2.4.4
* geos 3.5.1
* gdal 2.1.2
* proj 4.9.3
* sfcgal 1.3.0


**You can also simply use :**

```
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION postgis_sfcgal;
```


and from http://postgis.net/docs/postgis_installation.html#install_short_version

```
-- if you want to install tiger geocoder --
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION postgis_tiger_geocoder;

-- address standardizer extension as well
CREATE EXTENSION address_standardizer;
```

Using postgres apt repository:

https://wiki.postgresql.org/wiki/Apt