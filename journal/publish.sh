#!/bin/sh
# usage: type './publish.sh num'

ultimate=$1
penultimate=`expr $1 - 1`
antepenultimate=`expr $1 - 2`

xsltproc entry.xsl $1.xml > $1.html

sed s/foo/$1/ templatehead.txt > chanhead.txt

cat chanhead.txt $ultimate.xml $penultimate.xml $antepenultimate.xml chanfoot.txt > channel.txt

xsltproc chan2atom.xsl channel.txt > ../atom.xml

xsltproc chan2index.xsl channel.txt > index.html

