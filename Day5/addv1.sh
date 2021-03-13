#!/bin/bash -x
read -p "Enter a value for x" x
read -p "Enter a value for y" y
z=$(( $x+$y ))
echo $x + $y = $z
