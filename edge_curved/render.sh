#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_edge_curved_${x}x${y}.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      smooth_edge_curved.scad
  
    $OPENSCAD -o smooth_edge_curved_${x}x${y}_adapter_right.stl \
      -D 'render=true' -D "x=$x" -D "y=$y"  -D "right=true" \
      smooth_edge_curved.scad
  
    $OPENSCAD -o smooth_edge_curved_${x}x${y}_adapter_left.stl \
      -D 'render=true' -D "x=$x" -D "y=$y"  -D "left=true" \
      smooth_edge_curved.scad
  
    $OPENSCAD -o smooth_edge_curved_${x}x${y}_adapter_both.stl \
      -D 'render=true' -D "x=$x" -D "y=$y"  -D "right=true" -D "left=true" \
      smooth_edge_curved.scad
  
    $OPENSCAD -o smooth_edge_curved_half_floor_${x}x${y}.stl \
      -D 'render_floor=true' -D "x=$x" -D "y=$y" \
      smooth_edge_curved.scad
  done
done

