#!/usr/bin/python3

# Check if the script is run directly
if __name__ == "__main__":
    
    # Define variables
    a = 10
    b = 5
    
    # Import necessary functions from calculator_1 module
    from calculator_1 import add, sub, mul, div
    
    # Perform addition and store the result
    result_add = add(a, b)
    
    # Perform subtraction and store the result
    result_sub = sub(a, b)
    
    # Perform multiplication and store the result
    result_mul = mul(a, b)
    
    # Perform division and store the result
    result_div = div(a, b)
    
    # Print the results using the specified format
    print("{} + {} = {}".format(a, b, result_add))
    print("{} - {} = {}".format(a, b, result_sub))
    print("{} * {} = {}".format(a, b, result_mul))
    print("{} / {} = {}".format(a, b, result_div))
