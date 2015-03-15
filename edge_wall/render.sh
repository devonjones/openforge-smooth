#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_edge_wall_${x}x${y}.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      smooth_edge_wall.scad

    $OPENSCAD -o smooth_edge_wall_${x}x${y}_adapter_right.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "right=true" \
      smooth_edge_wall.scad

    $OPENSCAD -o smooth_edge_wall_${x}x${y}_adapter_left.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "left=true" \
      smooth_edge_wall.scad

    $OPENSCAD -o smooth_edge_wall_${x}x${y}_adapter_all.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "right=true" -D "left=true" \
      smooth_edge_wall.scad
  done
done

