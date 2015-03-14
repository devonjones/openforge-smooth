#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  $OPENSCAD -o smooth_edge_corner_${x}x${x}.stl \
    -D 'render=true' -D "x=$x" -D "y=$x" \
    smooth_edge_corner.scad

  $OPENSCAD -o smooth_edge_corner_${x}x${x}_adapter_right.stl \
    -D 'render=true' -D "x=$x" -D "y=$x" -D "right=true" \
    smooth_edge_corner.scad

  $OPENSCAD -o smooth_edge_corner_${x}x${x}_adapter_left.stl \
    -D 'render=true' -D "x=$x" -D "y=$x" -D "left=true" \
    smooth_edge_corner.scad

  $OPENSCAD -o smooth_edge_corner_${x}x${x}_adapter_both.stl \
    -D 'render=true' -D "x=$x" -D "y=$x" -D "right=true" -D "left=true" \
    smooth_edge_corner.scad
done

