# Python Project Generator

This shell script creates a new Python project with a standard directory structure.

## Usage

1. Ensure you have Python 3 installed on your system. You can verify this by running `python3 --version` in your terminal. If Python 3 is not installed, please install it first.

2. Run the script in your terminal:

```bash
./dirGen.sh
```

3. When prompted, enter the name of your new Python project.

The script will create a new directory with the name you provided. Inside this directory, it will create the following structure:

```
project_name/
├── src/
│   ├── __init__.py
│   └── main.py
├── tests/
│   ├── __init__.py
│   └── test_main.py
├── docs/
├── venv/
├── .gitignore
├── README.md
└── requirements.txt
```

## What does the script do?

1. Checks if the venv module is installed and installs it if necessary.
2. Asks for the name of the new Python project.
3. Creates a new directory with the project name.
4. Inside the project directory, it creates src, tests, and docs directories.
5. Creates __init__.py files in src and tests directories.
6. Creates a main.py file in src and a test_main.py file in tests.
7. Creates a README.md and a .gitignore file in the project root.
8. Creates a requirements.txt file for managing Python dependencies.
9. Creates a Python virtual environment in the venv directory.








### Note
The virtual environment is not activated by default. To activate it, use the following command:
```
source venv/bin/activate  # On Unix or Linux
venv\Scripts\activate     # On Windows
```

Once the virtual environment is activated, you can install dependencies using pip install -r requirements.txt.

## To Run 
To run the Python project that you created using the shell script, follow these steps:

 - Navigate to the project directory:
```
cd your_project_name
```
 - Activate the virtual environment:

```
source venv/bin/activate  # On Unix or Linux
venv\Scripts\activate     # On Windows
```

 - Run the main.py script:
```
python src/main.py
```

This will execute the main.py script in the src directory. The output should be Hello, world! as that's the content of the main.py file created by the shell script.

Remember to replace your_project_name with the actual name of your project.

