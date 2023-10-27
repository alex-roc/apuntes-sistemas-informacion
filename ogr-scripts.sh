# shape a postgresql
## sencillo
ogr2ogr -f PostgreSQL PG:dbname=<base-de-datos> <nombre-archivo>.shp
## con opciones
ogr2ogr -f PostgreSQL PG:"<base-de-datos> host=localhost port=5432 user=postgres password=<password>" "<nombrearchivo>.shp"
## con cambio de srs
-t_srs EPSG:4326

# geopackage a postgresql
ogr2ogr -f "PostgreSQL" PG:"dbname=eus_geodb host=localhost port=5432 user=postgres password=postgres" "siose_2014_eus.gpkg" "t_poligonos" -nln siose_euskadi_poligonos_2014 -lco GEOMETRY_NAME=geom -lco FID=gid -progress

# geojson a postgresql
ogr2ogr -f "PostgreSQL" PG:"dbname=eus_geodb host=localhost port=5432 user=postgres password=postgres" "municipios_eus.geojson" -lco GEOMETRY_NAME=geom -lco FID=gid -progress
ogr2ogr -f PostgreSQL PG:dbname=geoms "area_verde.geojson"
