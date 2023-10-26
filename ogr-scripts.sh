# shape a postgresql
ogr2ogr -f PostgreSQL PG:dbname=geoms abc.shp

ogr2ogr -f "PostgreSQL" PG:"dbname=eus_geodb host=localhost port=5432 user=postgres password=postgres" "inv_forestal_eus.shp" -lco GEOMETRY_NAME=geom -lco FID=gid -progress

# geopackage a postgresql
ogr2ogr -f "PostgreSQL" PG:"dbname=eus_geodb host=localhost port=5432 user=postgres password=postgres" "siose_2014_eus.gpkg" "t_poligonos" -nln siose_euskadi_poligonos_2014 -lco GEOMETRY_NAME=geom -lco FID=gid -progress

# geojson a postgresql
ogr2ogr -f "PostgreSQL" PG:"dbname=eus_geodb host=localhost port=5432 user=postgres password=postgres" "municipios_eus.geojson" -lco GEOMETRY_NAME=geom -lco FID=gid -progress
