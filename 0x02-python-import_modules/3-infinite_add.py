#!/usr/bin/python3
from sys import argv

if __name__ == "__main__":
    # Extract all arguments except the script name
    arguments = argv[1:]

    # Ensure there are arguments to add
    if arguments:
        # Convert arguments to integers and calculate the sum
        result = sum(int(arg) for arg in arguments)

        # Print the result
        print(result)
    else:
        # Print 0 if no arguments are provided
        print(0)
