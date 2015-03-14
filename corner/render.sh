#!/bin/bash

: ${OPENSCAD:="openscad"}

$OPENSCAD -o smooth_corner_1x1.stl \
  -D 'render=true' -D 'x=1' -D 'y=1' \
  smooth_corner.scad

#$OPENSCAD -o smooth_corner_1x2.stl \
#  -D 'render=true' -D 'x=1' -D 'y=2' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_1x3.stl \
#  -D 'render=true' -D 'x=1' -D 'y=3' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_1x4.stl \
#  -D 'render=true' -D 'x=1' -D 'y=4' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_2x1.stl \
#  -D 'render=true' -D 'x=2' -D 'y=1' \
#  smooth_corner.scad

$OPENSCAD -o smooth_corner_2x2.stl \
  -D 'render=true' -D 'x=2' -D 'y=2' \
  smooth_corner.scad

#$OPENSCAD -o smooth_corner_2x3.stl \
#  -D 'render=true' -D 'x=2' -D 'y=3' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_2x4.stl \
#  -D 'render=true' -D 'x=2' -D 'y=4' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_3x1.stl \
#  -D 'render=true' -D 'x=3' -D 'y=1' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_3x2.stl \
#  -D 'render=true' -D 'x=3' -D 'y=2' \
#  smooth_corner.scad

$OPENSCAD -o smooth_corner_3x3.stl \
  -D 'render=true' -D 'x=3' -D 'y=3' \
  smooth_corner.scad

#$OPENSCAD -o smooth_corner_3x4.stl \
#  -D 'render=true' -D 'x=3' -D 'y=4' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_4x1.stl \
#  -D 'render=true' -D 'x=4' -D 'y=1' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_4x2.stl \
#  -D 'render=true' -D 'x=4' -D 'y=2' \
#  smooth_corner.scad

#$OPENSCAD -o smooth_corner_4x3.stl \
#  -D 'render=true' -D 'x=4' -D 'y=3' \
#  smooth_corner.scad

$OPENSCAD -o smooth_corner_4x4.stl \
  -D 'render=true' -D 'x=4' -D 'y=4' \
  smooth_corner.scad
