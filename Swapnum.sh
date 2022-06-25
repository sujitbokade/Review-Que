#!/bin/bash
echo "Enter 1st Number"
read A
echo "Enter 2nd Number"
read B
echo " A before swapping is $A & B is $B"

A=$((A+B))
B=$((A-B))
A=$((A-B))

echo " A after swapping is $A & B is $B"
