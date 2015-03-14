#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_wall_${x}x${y}.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      smooth_wall.scad
  done
done
