#!/bin/bash

# Check if venv is installed
python3 -c "import venv" &> /dev/null
if [ $? -ne 0 ]; then
    echo "venv is not installed. Installing it now..."
    python3 -m pip install virtualenv
fi

# Ask for the project name
echo "Enter the Python project name:"
read project_name

# Create the project directory
mkdir $project_name

# Change to the project directory
cd $project_name

# Create directories for source code, tests, and documentation
mkdir src
mkdir tests
mkdir docs

# Create __init__.py files in the source and tests directories
touch src/__init__.py
touch tests/__init__.py

# Create a main.py file in the source code directory
echo "print('Hello, world!')" > src/main.py

# Create a test_main.py file in the tests directory
echo "def test_main():" > tests/test_main.py
echo "    assert True" >> tests/test_main.py

# Create a README.md file in the project directory
echo "# $project_name" > README.md
echo "This is a Python project." >> README.md

# Create a .gitignore file in the project directory
echo "__pycache__/" > .gitignore
echo "*.py[cod]" >> .gitignore
echo ".env" >> .gitignore
echo "venv/" >> .gitignore

# Create a requirements.txt file in the project directory
touch requirements.txt

# Create a virtual environment
python3 -m venv venv

echo "Python project $project_name has been created."