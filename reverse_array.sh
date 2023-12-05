#!/bin/bash

data_structures=("list" "stack" "queue" "graph" "heap" "trees" "matrix")

echo "Original order:"
for ds in "${data_structures[@]}"; do
	echo $ds
done

reversed_ds=()
for ((i=${#data_structures[@]}-1; i>=0; i--)); do
	reversed_ds+=("${data_structures[i]}")
done

echo -e "\nReversed Order:"
for ds1 in "${reversed_ds[@]}"; do
	echo $ds1
done
