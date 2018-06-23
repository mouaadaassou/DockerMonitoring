#!/bin/bash

for (( i = 1; i <= $1; i++))
do
	docker-machine create Node$i
done
