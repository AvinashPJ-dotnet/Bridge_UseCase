#!/bin/bash -x
read -p "enter value a: " a
read -p "enter value b: " b
read -p "enter value c: " c
echo $(($((a*b))+c))
