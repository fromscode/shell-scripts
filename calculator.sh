#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b

echo ""
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Enter choice: " choice

case $choice in
	1) echo "Sum: $((a + b))" ;;
	2) echo "Difference: $((a - b))" ;;
	3) echo "Product: $((a * b))" ;;
	4) echo "Quotient: $((a / b))" ;;
	*) echo "Invalid choice" ;;
esac
