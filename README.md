# Simple Python Project
Simple Python project. Use it to check if your set up is complete

## Install VSCode
Follow instructions presented in [the website](https://code.visualstudio.com/download).

## Set up Git
Follow instructions presented in [the website](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
## Set up Python
* Install Python (If use Windows)
    * https://www.python.org/downloads/
* Set up Pyenv:
    * Follow the installation guide for macOS from here: https://github.com/pyenv/pyenv#installation
    * `$ pyenv install 3.9.13`
    * If you want to set the global Python version - `$ pyenv global 3.9.13`
* (Not recommended) Alternative - install a specific version of Python from https://www.python.org/downloads/

## Set up Poetry
* Install (full guide: https://python-poetry.org/docs/#installation)
    * TL;DR: `$ curl -sSL https://install.python-poetry.org | python3 - --version 1.2.0`
* Configure:
    * `$ poetry config virtualenvs.in-project true` - creates the virtual environment in the current folder as opposed to somewhere random
    * `$ poetry self add poetry-dotenv-plugin` - enabled sourcing environment variables from .env when commands run through Poetry
    * (optional) `$ poetry config virtualenvs.prefer-active-python true` seems to make Poetry work better with Visual Studio Code

### Install dependencies
* poetry install (this will create a `poetry.lock` file and a virtual environment in the .venv folder)
* `$ source .venv/bin/activate` this will activate a newly created environment

## Set-up pre-commit
* `$ pre-commit install`

## Run the python file and see if you can get an output
* `$ python src/main.py`
You should get this output:
```shell
        messages
0  Hello, World!
1      Sveikiii!
```
