# Understanding Packages and Modules
Modules are Python files that contain reusable code. They can define functions, classes, and variables that can be imported and used in other Python files.

By using modules, you can break your code into smaller, more manageable pieces, making it easier to read and maintain. For example, if you have a file named `math_utils.py` that contains various mathematical functions, you can import it into another file like this: 
```python
import math_utils
result = math_utils.add(5, 3)
print("Addition Result:", result)
```

Packages are a way to organize related modules in Python. A package is simply a directory that contains a special file called `__init__.py`, which can be empty or contain initialization code for the package. Packages allow you to structure your code in a hierarchical manner, making it easier to manage and maintain. 

Modules and packages are essential for organizing code in Python. They help you break down your code into smaller, manageable pieces, making it easier to read, maintain, and reuse. By using modules and packages, you can create a well-structured codebase that is easy to navigate and understand.

In the following example, we will create a package called `math_utils` that contains two modules: `addition.py` and `subtraction.py`. Each module will define a function that performs a specific mathematical operation. We will then import these modules into another file and use their functions. Below is the file structure for the package:
math_utils/
|---__init__.py
|---addition.py
|---subtraction.py

To use this package, you can import the modules in another Python file like this:
```python
from math_utils import addition, subtraction
result1 = addition.add(5, 3)
result2 = subtraction.subtract(5, 3)
print("Addition Result:", result1)
print("Subtraction Result:", result2)
```

## Whats the difference?
The main difference between modules and packages is that a module is a single file containing Python code, while a package is a collection of related modules organized in a directory. Packages can contain sub-packages, allowing for a hierarchical structure. In summary, modules are individual files, while packages are directories that can contain multiple modules and sub-packages.

# What is PIP?
PIP is a package manager for Python that allows you to install, upgrade, and manage third-party libraries and packages. It simplifies the process of installing and managing dependencies for your Python projects. PIP is included with Python installations starting from version 3.4, making it easy to install and use.


# Package Version Control
PIP uses version control to manage the versions of packages you install. When you install a package using PIP, it downloads the latest version of that package from the Python Package Index (PyPI) or a specified repository. You can also specify a specific version of a package to install, ensuring that your project uses the same version across different environments.

Each version of a package is identified by a version number, which typically follows the Semantic Versioning (SemVer) convention. This convention uses a three-part version number: MAJOR.MINOR.PATCH. For example, version 1.2.3 indicates: 1 is the major version, 2 is the minor version, and 3 is the patch version. When you install a package, PIP will check for compatibility with your current environment and dependencies, ensuring that the installed version works correctly with your project.

Every version of a package contains different features, bug fixes, and improvements. By using version control, you can ensure that your project remains stable and compatible with the libraries it depends on. This is especially important when working in a team or deploying your project to different environments, as it helps avoid issues caused by incompatible package versions.

# What is a Virtual Environment?
A virtual environment is an isolated Python environment that allows you to manage dependencies for your projects separately. It enables you to create a self-contained environment with its own Python interpreter and libraries, ensuring that your project's dependencies do not interfere with other projects or the system Python installation.

When you use PIP to install packages, they are installed globally by default. This can lead to version conflicts and compatibility issues when different projects require different versions of the same package. By using a virtual environment, you can create a separate environment for each project, allowing you to install and manage dependencies independently.

For example, if you have two projects that require different versions of the same package, you can create two separate virtual environments, each with its own version of the package. This way, you can work on both projects without worrying about conflicts or compatibility issues.

## Creating a Virtual Environment
To create a virtual environment, you can use the `venv` module, which is included with Python 3.3 and later. Here are the steps to create and activate a virtual environment from the command line:
1. Open a terminal or command prompt.
2. Navigate to the directory where you want to create the virtual environment.
3. Run the following command to create a virtual environment:
```bash
python -m venv .venv
```
** In this example, ".venv" is the name of the virtual environment directory. You can choose any name you prefer.

4. To activate the virtual environment, run the following command on Windows:
```bash
.venv\Scripts\activate
```
** ".venv" is the name of the virtual environment directory you specified when creating the environment.

To create a virtual environment from VSCode, follow these steps:
1. Open VSCode and navigate to the project folder where you want to create the virtual environment.
2. Use Command Palette (Ctrl + Shift + P) and type "Python: Create Environment" or "Python: Create Virtual Environment".
3. Select the Python interpreter you want to use for the virtual environment.
4. Choose the location for the virtual environment (e.g., ".venv").
5. Once the virtual environment is created, you can activate it by running the appropriate command in the terminal:
```bash
.venv\Scripts\activate
```
** ".venv" is the name of the virtual environment directory you specified when creating the environment.

## Installing packages into the virtual environment
Once the virtual environment is activated, you will know by the command line prompt changing to indicate that you are now working within the virtual environment. For example, on Windows, the prompt may change to something like:
```bash
(.venv) C:\path\to\your\project>
```

From here, you can use PIP to install packages, and they will be installed only within the virtual environment, not globally. For example:
```bash
pip install requests
```

## Documenting Project Dependencies
To document the dependencies of your project, you can create a `requirements.txt` file. This file lists all the packages and their versions that your project depends on. You can generate this file automatically by running the following command in your activated virtual environment:
```bash
pip freeze > requirements.txt
```
This command will create a `requirements.txt` file containing all the installed packages and their versions in the current virtual environment. You can then share this file with others or use it to recreate the same environment on another machine.

## Installing from requirements.txt
To install the dependencies listed in a `requirements.txt` file, you can use the following command:
```bash
pip install -r requirements.txt
```
This command will read the `requirements.txt` file and install all the specified packages and their versions in the current virtual environment. This is useful for setting up a new environment or sharing your project with others, ensuring that they have the same dependencies installed.

If you are creating a new virtual environment from VSCode for a project that already contains a `requirements.txt` file, you will be prompted at the time of creation to install the dependencies listed in the file. This makes it easy to set up a new environment with all the necessary packages right from the start.

## Importance of Virtual Environments
When sharing code amongst others, its important that all users have the same packages and their appropriate versions installed. This is especially important when working in a team or deploying your project to different environments, as it helps avoid issues caused by incompatible package versions. By using virtual environments, you can ensure that your project remains stable and compatible with the libraries it depends on.