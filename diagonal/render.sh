#!/bin/bash

: ${OPENSCAD:="openscad"}

$OPENSCAD -o smooth_diagonal_1x1.stl \
  -D 'render_diagonal=true' -D 'x=1' \
  smooth_diagonal.scad

$OPENSCAD -o smooth_diagonal_2x2.stl \
  -D 'render_diagonal=true' -D 'x=2' \
  smooth_diagonal.scad

$OPENSCAD -o smooth_diagonal_3x3.stl \
  -D 'render_diagonal=true' -D 'x=3' \
  smooth_diagonal.scad

$OPENSCAD -o smooth_diagonal_4x4.stl \
  -D 'render_diagonal=true' -D 'x=4' \
  smooth_diagonal.scad


$OPENSCAD -o smooth_diagonal_half_floor_1x1.stl \
  -D 'render_diagonal_half_floor=true' -D 'x=1' \
  smooth_diagonal.scad

$OPENSCAD -o smooth_diagonal_half_floor_2x2.stl \
  -D 'render_diagonal_half_floor=true' -D 'x=2' \
  smooth_diagonal.scad

$OPENSCAD -o smooth_diagonal_half_floor_3x3.stl \
  -D 'render_diagonal_half_floor=true' -D 'x=3' \
  smooth_diagonal.scad

$OPENSCAD -o smooth_diagonal_half_floor_4x4.stl \
  -D 'render_diagonal_half_floor=true' -D 'x=4' \
  smooth_diagonal.scad
