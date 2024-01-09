#!/usr/bin/env python3

def read_file(filename=""):
    """
    Reads a text file (UTF8) and prints its content to stdout.

    Args:
        filename (str): The name of the file to be read.

    Returns:
        None
    """
    with open(filename, mode='r', encoding='utf-8') as file:
        content = file.read()
        print(content)

if __name__ == "__main__":
    # Example usage:
    read_file("example.txt")
