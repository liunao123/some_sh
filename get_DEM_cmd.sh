# merge 30m dem with dem.py(isce script) for isce ,
# lots of DEM is in dir :/media/l/00029023000E261A/30_DEM
# just change -b from your ROI
# if your AOI dem have already in this dir everything is OK;
# or you should download maunally;

dem.py -a stitch -r -s 1 -c -k -b 34 40 100 108 
