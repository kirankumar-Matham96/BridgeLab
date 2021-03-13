#!/bin/bash -x
echo "enter x" 
read x
echo "enter y"
read y
z=(( $x+$y ))
echo $z
