import math

def calculate_area(*args):
    num_args = len(args)

    if num_args == 1 and isinstance(args[0], (int, float)):
        # Circle: Calculate and return the area of a circle (pi * radius^2)
        radius = args[0]
        return math.pi * radius**2
    elif num_args == 2 and all(isinstance(arg, (int, float)) for arg in args):
        # Rectangle: Calculate and return the area of a rectangle (length * width)
        length, width = args
        return length * width
    elif num_args == 3 and args[2].lower() == "triangle" and all(isinstance(arg, (int, float)) for arg in args[:2]):
        # Triangle: Calculate and return the area of a triangle (0.5 * base * height)
        base, height = args[:2]
        return 0.5 * base * height
    else:
        raise ValueError("Invalid input!")

# Ask the user for argument values
try:
    user_input = input("Enter argument values: ").strip()
    args = user_input.split(",")

    if len(args) == 1:
        result = calculate_area(float(args[0]))
        print("Area of Circle:", result)
    elif len(args) == 2:
        result = calculate_area(float(args[0]), float(args[1]))
        print("Area of Rectangle:", result)
    elif len(args) == 3 and args[2].strip().lower() == "triangle":
        result = calculate_area(float(args[0]), float(args[1]), "triangle")
        print("Area of Triangle:", result)
    else:
        raise ValueError("Invalid input!")
except ValueError as e:
    print(e)
