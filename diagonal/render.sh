#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  $OPENSCAD -o smooth_diagonal_${x}x${x}.stl \
    -D 'render=true' -D "x=$x" \
    smooth_diagonal.scad

  $OPENSCAD -o smooth_diagonal_half_floor_${x}x${x}.stl \
    -D 'render_floor=true' -D "x=$x" \
    smooth_diagonal.scad
done

