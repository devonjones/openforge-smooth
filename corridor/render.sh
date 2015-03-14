#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {2..4}
  do
    $OPENSCAD -o smooth_corridor_${x}x${y}.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      smooth_corridor.scad
  done
done
