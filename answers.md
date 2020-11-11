# 1
## What is the Topographic Wetness Index? 
The topographic wetness index calculates the wetness of an area by using the slope and the upstream. The higher the slope, the faster water will flow away, thus rendering the area less wet.
## How are the TWI values related to the flood probability?
The faster water flows away from an area the higher upstream can be handled by said area.
# 2
According to [TWI computation: a comparison of different open source GISs](https://link.springer.com/article/10.1186/s40965-019-0066-y) SAGA GIS, GRASS GIS and Whitebox GAT support the calculation of the TWI.

# 3
The model clips the input raster layer and reprojects it to EPSG:32632 in one step, then uses GRASS GIS r.topidx to calculate the TWI.