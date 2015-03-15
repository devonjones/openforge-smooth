#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  $OPENSCAD -o smooth_edge_diagonal_${x}x${x}.stl \
    -D 'render=true' -D "x=$x" \
    smooth_edge_diagonal.scad

  $OPENSCAD -o smooth_edge_diagonal_${x}x${x}_adapter_right.stl \
    -D 'render=true' -D "x=$x" -D "right=true" \
    smooth_edge_diagonal.scad

  $OPENSCAD -o smooth_edge_diagonal_${x}x${x}_adapter_left.stl \
    -D 'render=true' -D "x=$x" -D "left=true" \
    smooth_edge_diagonal.scad

  $OPENSCAD -o smooth_edge_diagonal_${x}x${x}_adapter_both.stl \
    -D 'render=true' -D "x=$x" -D "right=true" -D "left=true" \
    smooth_edge_diagonal.scad

  $OPENSCAD -o smooth_edge_diagonal_${x}x${x}_adapter_sharp_right.stl \
    -D 'render=true' -D "x=$x" -D "right_sharp=true" \
    smooth_edge_diagonal.scad

  $OPENSCAD -o smooth_edge_diagonal_${x}x${x}_adapter_sharp_left.stl \
    -D 'render=true' -D "x=$x" -D "left_sharp=true" \
    smooth_edge_diagonal.scad

  $OPENSCAD -o smooth_edge_diagonal_${x}x${x}_adapter_sharp_both.stl \
    -D 'render=true' -D "x=$x" \
    -D "right_sharp=true" -D "left_sharp=true" \
    smooth_edge_diagonal.scad

  $OPENSCAD -o smooth_edge_diagonal_half_floor_${x}x${x}.stl \
    -D 'render_floor=true' -D "x=$x" \
    smooth_edge_diagonal.scad
done

