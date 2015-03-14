#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_curved_${x}x${y}.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      smooth_curved.scad

    $OPENSCAD -o smooth_curved_half_floor_${x}x${y}.stl \
      -D 'render_floor=true' -D "x=$x" -D "y=$y" \
      smooth_curved.scad
  done
done
