#!/bin/bash 

unzip ../Klimawandel.odp

sleep 1
for i in *.xml; do
    export XML=$(cat $i)
    echo $XML | xmllint --format - > $i
done
