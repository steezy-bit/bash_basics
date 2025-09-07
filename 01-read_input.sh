#!/bin/bash
# read the name of the user and print hello

echo "Hello! What is your name"
read name
echo "Welcome, $name"

# single quotes prevent the expansion of the variable
echo 'Your name was stored in $name'
 
# exercise: ask the user for a filename
echo "Please enter a filename:"
read filename

# create an empty file with that name
touch "$filename"
echo "Created an empty file called $filename"

# optional: check that the file really exists
if [ -e "$filename" ]; then
  echo "Confirmed: $filename was created successfully."
else
  echo "Oops! Something went wrong."
fi