#!/bin/bash

: ${OPENSCAD:="openscad"}

$OPENSCAD -o smooth_dead_end_2x1.stl \
  -D 'render=true' -D 'x=2' -D 'y=1' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_2x2.stl \
  -D 'render=true' -D 'x=2' -D 'y=2' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_2x3.stl \
  -D 'render=true' -D 'x=2' -D 'y=3' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_2x4.stl \
  -D 'render=true' -D 'x=2' -D 'y=4' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_3x1.stl \
  -D 'render=true' -D 'x=3' -D 'y=1' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_3x2.stl \
  -D 'render=true' -D 'x=3' -D 'y=2' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_3x3.stl \
  -D 'render=true' -D 'x=3' -D 'y=3' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_3x4.stl \
  -D 'render=true' -D 'x=3' -D 'y=4' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_4x1.stl \
  -D 'render=true' -D 'x=4' -D 'y=1' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_4x2.stl \
  -D 'render=true' -D 'x=4' -D 'y=2' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_4x3.stl \
  -D 'render=true' -D 'x=4' -D 'y=3' \
  smooth_dead_end.scad

$OPENSCAD -o smooth_dead_end_4x4.stl \
  -D 'render=true' -D 'x=4' -D 'y=4' \
  smooth_dead_end.scad
