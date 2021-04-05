# database_example

Documentation for importing landmarks_postgis database

Prerequests:
Postgresql, 
pgadmin,
postgis

1. download the landmarks_postgis database tar file
2. in pgadmin create a new database
3. right-click on new database and select restore
4. in the Filename field on the right side click the three dots
5. at the bottom right click on format and select all files
6. when all files are shown select the database file landmarks_postgis
7. click restore

--that is it

--Postregsql and postgis version data

PostgreSQL 10.16, compiled by Visual C++ build 1800, 64-bit
POSTGIS="3.1.1 3.1.1" [EXTENSION] PGSQL="100" GEOS="3.9.0-CAPI-1.14.1" SFCGAL="1.3.8" PROJ="7.1.1" LIBXML="2.9.9" LIBJSON="0.12" LIBPROTOBUF="1.2.1" WAGYU="0.5.0 (Internal)" TOPOLOGY

P.S. i selected these versions because they are more compatible with other OS.
