#!/bin/bash
source ~/.bashrc
for i in *_*
do echo $i "looks.py -i isce_minrefdem.int -o isce_minrefdem.int  -r 5 -a 1"
cd $i
looks.py -i isce_minrefdem.int -o temp.int -r 5 -a 1
fixImageXml.py -f -i temp.int
rm -f isce_minrefdem.int
rm -f isce_minrefdem.int.vrt
rm -f isce_minrefdem.int.xml
mv temp.int  isce_minrefdem.int
mv temp.int.vrt isce_minrefdem.int.vrt
mv temp.int.xml isce_minrefdem.int.xml
cd ../
done

#cd 20200402_20200414
#looks.py -i isce_minrefdem.int -o temp.int -r 5 -a 1;fixImageXml.py -f -i temp.int
#rm -f isce_minrefdem.int
#rm -f isce_minrefdem.int.vrt
#rm -f isce_minrefdem.int.xml
#mv temp.int  isce_minrefdem.int
#mv temp.int.vrt isce_minrefdem.int.vrt
#mv temp.int.xml isce_minrefdem.int.xml
#cd ../
#
