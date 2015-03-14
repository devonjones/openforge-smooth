#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {2..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_dead_end_2x1.stl \
      -D 'render=true' -D "x=$x" -D "y=$y" \
      smooth_dead_end.scad
  done
done

