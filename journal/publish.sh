#!/bin/sh
# usage: type './publish.sh num'

last=$1
min1=`expr $1 - 1`
min2=`expr $1 - 2`
min3=`expr $1 - 3`
min4=`expr $1 - 4`
min5=`expr $1 - 5`

xsltproc entry.xsl $1.xml > $1.html

sed s/foo/$1/ templatehead.txt > chanhead.txt

cat chanhead.txt $last.xml $min1.xml $min2.xml $min3.xml $min4.xml $min5.xml chanfoot.txt > channel.txt

xsltproc chan2atom.xsl channel.txt > ../atom.xml

xsltproc chan2index.xsl channel.txt > index.html

