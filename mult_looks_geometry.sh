#!/bin/bash
source ~/.bashrc
for i in *.raw
do echo $i
echo "looks.py -i $i -o temp.raw  -r 5 -a 1"
looks.py -i $i -o temp.raw -r 5 -a 1
fixImageXml.py -f -i temp.raw
rm -f $i
rm -f $i.vrt
rm -f $i.xml

mv temp.raw $i
mv temp.raw.vrt $i.vrt
mv temp.raw.xml $i.xml
done;
