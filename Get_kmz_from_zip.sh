#!/bin/bash
mkdir kmz
for i in *.zip; do
echo $i;
 unzip ./$i "*/preview/map-overlay.kml";
 unzip ./$i "*/preview/quick-look.png";
 cd ./${i%.*}.SAFE/preview/
 zip -r ${i:17:8}.kmz map-overlay.kml quick-look.png;
 mv ${i:17:8}.kmz ../../kmz
 cd ../../
 rm -r *.SAFE
done