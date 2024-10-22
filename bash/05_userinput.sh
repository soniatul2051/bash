#!/bin/bash

# Prompt the user for their name
echo "Please enter your name:"
read name

# Output a greeting
echo "Hello, $name!"

# You can also read multiple values at once:
echo "Enter your first and last name:"
read first_name last_name
echo "Hello, $first_name $last_name!"

# You can provide a prompt directly in the read command:
read -p "Please enter your age: " age
echo "You are $age years old."

# You can set a timeout for user input:
read -t 10 -p "You have 10 seconds to enter your name: " name
echo "Hello, $name!"

# Handling Input Errors
# You might want to check if the user has provided input. Here's an example of how to handle missing input:
#!/bin/bash

read -p "Enter your favorite color: " color

if [ -z "$color" ]; then
    echo "You did not enter a color!"
else
    echo "Your favorite color is $color."
fi
