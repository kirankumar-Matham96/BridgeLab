#!/bin/bash -x
function add(){
sum=$(($1+$2))
echo "sum= "$sum
}
function sub(){
subtract=$(($1-$2))
echo "subtract= "$subtract
}
function mul(){
multiply=$(($1*$2))
echo "multiply= "$multiply
}
function div(){
division=$(($1/$2))
echo "division= "$division
}
add 10 30
sub 30 10
mul 10 10
div 100 10
