#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_floor_${x}x${y}.stl \
      -D 'render_floor_tile=true' -D "x=$x" -D "y=$y" \
      smooth_floor.scad
  done
done

