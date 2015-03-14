#!/bin/bash

: ${OPENSCAD:="openscad"}

$OPENSCAD -o smooth_corridor_1x2.stl \
  -D 'render=true' -D 'x=1' -D 'y=2' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_1x3.stl \
  -D 'render=true' -D 'x=1' -D 'y=3' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_1x4.stl \
  -D 'render=true' -D 'x=1' -D 'y=4' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_2x2.stl \
  -D 'render=true' -D 'x=2' -D 'y=2' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_2x3.stl \
  -D 'render=true' -D 'x=2' -D 'y=3' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_2x4.stl \
  -D 'render=true' -D 'x=2' -D 'y=4' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_3x2.stl \
  -D 'render=true' -D 'x=3' -D 'y=2' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_3x3.stl \
  -D 'render=true' -D 'x=3' -D 'y=3' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_3x4.stl \
  -D 'render=true' -D 'x=3' -D 'y=4' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_4x2.stl \
  -D 'render=true' -D 'x=4' -D 'y=2' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_4x3.stl \
  -D 'render=true' -D 'x=4' -D 'y=3' \
  smooth_corridor.scad

$OPENSCAD -o smooth_corridor_4x4.stl \
  -D 'render=true' -D 'x=4' -D 'y=4' \
  smooth_corridor.scad
