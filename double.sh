#!/bin/bash

double() {
	return $(($1 * 2))
}

double 2 4

res=$?

echo "Double of 2: $res"
