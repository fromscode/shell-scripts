#!/bin/bash

Hello () {								# function definition
	echo "Inside the function"
	echo "file name: $0"
	echo "Value received in function: $1, $2"
	return 10
}


# calling the function

Hello AEC 108

# capture value returned by last command

recv=$?

echo ""
echo "Outside the function"
echo "Return value: $recv"


