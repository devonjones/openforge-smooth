#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  $OPENSCAD -o smooth_diagonal_1x1.stl \
    -D 'render_diagonal=true' -D "x=$x" \
    smooth_diagonal.scad

  $OPENSCAD -o smooth_diagonal_half_floor_1x1.stl \
    -D 'render_diagonal_half_floor=true' -D "x=$x" \
    smooth_diagonal.scad
done

