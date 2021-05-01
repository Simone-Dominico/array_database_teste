#!/bin/bash

$x=251
$y=501
$z=501
$chunks=209
#iquery -nq "drop array sis;"
#iquery -nq "create array sis <speed:float>[trial=0:*,1,0, x=0:*,"$x",0, y=0:*,"$y",0, z=0:*,"$z",0];"
iquery -nq "create array sisRaw <speed:float>[i=0:*,1000000,0];"

#Loading data one chunk at time
for INDEX in {0..$chunks}
do
    CMD="iquery -nq \"load sisRaw from '$(pwd)/data/vp' as '(float)';\""
    eval $CMD
    CMD="iquery -naq \"insert(redimension(apply(sisRaw, trial, "$INDEX", x, i/"$x", y, (i%"$y")/"$y", z, i%"$z"), sis), sis);\""
    eval $CMD
    CMD="iquery -nq \"drop array sisRaw;\""
    eval $CMD
    CMD="iquery -nq \"create array sisRaw <speed:float>[i=0:*,1000000,0];\""
    eval $CMD
done
