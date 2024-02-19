#!/bin/bash
 
# This script will generate from the pretvsuppaal.ejs 
# a family of models for the given set of configurations


VOTERS_MAX=5
EJS_SRC='pretvsuppaal.ejs'


# specifies whether all Mix-tellers are honest for current iteration
sed -i "3s/.*/\"MtellerHonest\":true/" ./config.json 
for ((i=1;i<=5;i++)); do
    # specifies the number of voters for current iteration
    sed -i "2s/.*/\"NV\":${i},/" ./config.json 

    # specifies the name of the output model
    OUT_NAME="./xml/pret-${i}voters-honest.xml"

    npm exec -- ejs $EJS_SRC -f config.json -o $OUT_NAME
done


# specifies whether all Mix-tellers are honest for current iteration
sed -i "3s/.*/\"MtellerHonest\":false/" ./config.json 
for ((i=2;i<=5;i++)); do
    # specifies the number of voters for current iteration
    sed -i "2s/.*/\"NV\":${i},/" ./config.json 

    # specifies the name of the output model
    OUT_NAME="./xml/pret-${i}voters-corrupt.xml"

    npm exec -- ejs $EJS_SRC -f config.json -o $OUT_NAME
done
