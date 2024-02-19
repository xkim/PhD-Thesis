#!/bin/bash
 
# This script will verify models from /xml
# over the queries in /queries

VERIF_EXEC='/home/yan/Desktop/uppaal-4.1.24/bin-Linux/verifyta'

ulimit -v 4096000 # max 4 GB of virtual memory

for f in $(ls ./xml/); do
    fileName="${f%*.xml}"       # basename of the model specification file
    $VERIF_EXEC -o1 "./xml/$f" ./queries/formula1.q
    $VERIF_EXEC -o1 "./xml/$f" ./queries/formula2.q
    $VERIF_EXEC -o1 "./xml/$f" ./queries/formula3.q
    $VERIF_EXEC -o1 "./xml/$f" ./queries/formula4.q
    $VERIF_EXEC -o1 "./xml/$f" ./queries/formula5.q
done
