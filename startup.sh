!#/bin/bash
#This is how to start a bash script with the shebang #!/bin/bash

# The shebang tells the operating system to run this file with Bash.
# Make the file executable on Linux or macOS with: chmod +x startup.sh

# Store text in a variable. Use "$NAME" when reading the variable so spaces
# and special characters are handled safely.
NAME="Derik"
echo "Hello, $NAME!"

# Use $(...) to save the output of a command in a variable.
CURRENT_DIRECTORY="$(pwd)"
echo "This script is running in: $CURRENT_DIRECTORY"

# Positional parameters contain values passed after the script name.
# Example: ./startup.sh first second
FIRST_ARGUMENT="${1:-no argument supplied}"
echo "First argument: $FIRST_ARGUMENT"

# An if statement runs code when a condition is true.
if [[ -n "$1" ]]; then
	echo "An argument was provided."
else
	echo "No argument was provided."
fi

# Compare numbers with -gt, -lt, -eq, and related operators.
NUMBER=7
if [[ "$NUMBER" -gt 5 ]]; then
	echo "$NUMBER is greater than 5."
fi

# A for loop repeats a block once for each item in a list.
FRUIT_LIST=("apple" "banana" "orange")
for FRUIT in "${FRUIT_LIST[@]}"; do
	echo "Fruit: $FRUIT"
done

# A while loop repeats as long as its condition remains true.
COUNT=1
while [[ "$COUNT" -le 3 ]]; do
	echo "Count: $COUNT"
	((COUNT++))
done

# Functions group reusable commands. Arguments inside a function use $1, $2,
# and so on, just like arguments passed to the script itself.
say_goodbye() {
	local PERSON="$1"
	echo "Goodbye, $PERSON!"
}

say_goodbye "$NAME"

# Test whether a path exists before trying to use it.
if [[ -f "$0" ]]; then
	echo "The script file exists."
fi

# Every command returns an exit status: 0 means success, and a non-zero value
# means failure. This script ends with 0 to report successful completion.
exit 0



