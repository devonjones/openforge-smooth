#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_edge_corridor_${x}x${y}.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_front_right.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "right_front=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_front_left.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "left_front=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_front_all.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "right_front=true" -D "left_front=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_front_right_back_left.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "right_front=true" -D "left_back=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_front_left_back_right.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "right_back=true" -D "left_front=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_right.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" -D "right_front=true" -D "right_back=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_front_all_back_left.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      -D "right_front=true" -D "left_front=true" -D "left_back=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${y}_adapter_front_all_back_right.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      -D "right_front=true" -D "left_front=true" -D "right_back=true" \
      smooth_edge_corridor.scad

    $OPENSCAD -o smooth_edge_corridor_${x}x${x}_adapter_all.stl \
      -D 'render=true' -D "x=$x" -D "y=$x" \
      -D "right_front=true" -D "left_front=true" \
      -D "right_back=true" -D "left_back=true" \
      smooth_edge_corridor.scad
  done
done

