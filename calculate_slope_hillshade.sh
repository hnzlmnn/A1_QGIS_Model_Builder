#!/bin/bash
set -e

# Cleanup
rm -f koper.shp koper.shx koper.dbf koper.prj dem_cliped.tif dem_slope.tif dem_hillshade.tif

ogr2ogr -where '"NAME_2" = "Koper"' koper.shp gadm36_SVN.gpkg gadm36_SVN_2

# ogrinfo koper.shp koper -so 

gdalwarp -cutline koper.shp -crop_to_cutline -t_srs EPSG:32632 dem_merge.tif dem_cliped.tif

gdaldem slope dem_cliped.tif dem_slope.tif
gdaldem hillshade dem_cliped.tif dem_hillshade.tif