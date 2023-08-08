#!/bin/bash

# Implementing of map function
# Parameter: $1 - the name of a function 
map () {
  f=$1
  shift

  for x 
  do
    $f $x
  done
}

# export functions from scripts (through export -f)
export -f map

reduce () {
  acc=$1
  f=$2
  shift
  shift

  for curr
  do
    acc=$($f $acc $curr)
  done

  echo $acc
}

export -f reduce