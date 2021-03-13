#!/bin/bash -x

# declaring a dictionary

declare -A sounds

# passing keys

sounds[dog]="bark"
sounds[bird]="tweet"
sounds[cow]="moo"
sounds[wolf]="howl"

echo ${sounds[@]} # printing elements in the dictionary

# Note: we cannot control sequence in the dictionaries

echo ${sounds[cow]} # To print perticuler element

echo ${#sounds[@]} # length of dictionary

echo ${!sounds[@]} # To print the keys only

# with for loop

for elements in ${!sounds[@]}
do
	echo $elements = ${sounds[$elements]}
done
