#!/bin/bash

# A script to calculate simple interest

echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest:"
read rate

echo "Enter the time period in years:"
read time

# Validate inputs
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $rate =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Invalid input. Please enter numeric values."
  exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "The simple interest is: $interest"
