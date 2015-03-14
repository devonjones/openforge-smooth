#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  $OPENSCAD -o smooth_corner_${x}x${x}.stl \
    -D 'render=true' -D "x=$x" -D "y=$x" \
    smooth_corner.scad
done

