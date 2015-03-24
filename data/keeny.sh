#!/bin/sh

# Removes new line from file provided as an argument.

# Delete empty lines, whitespace at the end of lines:
sed '/^[[:space:]]*$/d;s/[[:space:]]*$//' $1 > $2

