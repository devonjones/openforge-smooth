#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  $OPENSCAD -o smooth_corner_1x1.stl \
    -D 'render=true' -D "x=$x" -D "y=$x" \
    smooth_corner.scad
done

