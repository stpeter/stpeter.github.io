#!/bin/sh
# usage: type './all.sh'

ls *.xml > tmp.txt
sed s/.xml// tmp.txt > entries.txt

while read f
do
    xsltproc entry.xsl $f.xml > $f.html
done < entries.txt

rm tmp*.txt
rm entries.txt
