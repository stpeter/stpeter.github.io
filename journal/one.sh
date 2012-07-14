#!/bin/sh
# usage: type './one.sh num'

xsltproc entry.xsl $1.xml > $1.html
