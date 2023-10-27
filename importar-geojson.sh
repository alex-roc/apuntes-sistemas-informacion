# importar geojson a postgresql
# ubicarse con la linea de comandos en la carpeta donde se encuentra el archivo .geojson
# ajustar: <base-de-datos>, <password>, <nombre-archivo>
# ejecutar: sh importar-geojson.sh
ogr2ogr -f PostgreSQL PG:"<base-de-datos> host=localhost port=5432 user=postgres password=<password>" "<nombrearchivo>.shp"
