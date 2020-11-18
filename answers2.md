# 2.1 Retrieving information about the DEM files
## N45E014.hgt
### What is the coordinate reference system (EPSG)?
EPSG 4326
### What is the driver (file format)?
SRTMHGT/SRTMHGT File Format
### What is the spatial resolution? (Don't forget to provide the units)
0.000277777777778° -0.000277777777778° = 1 Winkelsekunde

## n45\_e013\_1arc\_v3.tif
### What is the coordinate reference system (EPSG)?
EPSG 4326
### What is the driver (file format)?
GTiff/GeoTIFF
### What is the spatial resolution? (Don't forget to provide the units)
0.000277777777778° -0.000277777777778° = 1 Winkelsekunde

# 2.2 Creating a raster mosaic
## What is the difference between the two output files?
The file size and it's content. The merged image contains all pixels from both images, whereas the vrt only contains a XML structure that describes the merging process.
## What might be an advantage of using `gdalbuildvrt` instead of `gdalmerge`?
The vrt is only usable with the source files available. The merged tiff can be used on it's own. THe advantage would be that vrt files can represent multiple mosaics with less space being used.
