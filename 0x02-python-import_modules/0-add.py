#!/usr/bin/python3

# Check if the script is run directly
if __name__ == "__main__":
    # Define variables
    a = 1
    b = 2
    
    # Import the add function from add_0 module
    from add_0 import add
    
    # Call the add function with a and b as arguments
    result = add(a, b)
    
    # Print the formatted result
    print("{} + {} = {}".format(a, b, result))
