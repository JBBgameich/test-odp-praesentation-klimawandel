#!/bin/bash 

unzip ../Klimawandel.odp
for i in *.xml; do
    export XML=$(cat $i)
    echo $XML | xmllint --format - > $i
done
