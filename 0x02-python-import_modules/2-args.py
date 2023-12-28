#!/usr/bin/python3
from sys import argv

if __name__ == "__main__":
    # Get the number of arguments
    num_args = len(argv) - 1

    # Print the number of arguments
    print("{} argument{}{}{}".format(
        num_args,
        's' if num_args != 1 else '',
        '.' if num_args == 0 else '',
        ':' if num_args != 0 else ''
    ))

    # Print each argument and its position
    for i, arg in enumerate(argv[1:], start=1):
        print("{}: {}".format(i, arg))
