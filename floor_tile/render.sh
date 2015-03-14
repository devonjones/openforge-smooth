#!/bin/bash

: ${OPENSCAD:="openscad"}

for x in {1..4}
do
  for y in {1..4}
  do
    $OPENSCAD -o smooth_floor_1x1.stl \
      -D 'render=true' -D 'x=1' -D 'y=1' \
      smooth_floor.scad
  done
done

