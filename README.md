# CodeAcademy AI course material

## Related repositories
| **Title**             | **Description**                                                          | **Link**                                       |
|-----------------------|--------------------------------------------------------------------------|------------------------------------------------|
| Simple Python Project | Project that showcases Python project structure and usability of modules | https://github.com/dqmis/simple_python_project |
| Dog Shelter           | Repository to showcase FastAPI functionality                             | https://github.com/dqmis/dog_shelter           |
| Recipes Scraper       | Project showcasing web scraping with Python                              | https://github.com/dqmis/recipes_scraper       |

## Assignments

## Set up

### Install VSCode
* Follow instructions presented in [the website](https://code.visualstudio.com/download).
* Install `Python`, `Jupyter`, `autoDocstring`, `Mypy`, `Pylance` extensions

### Set up Git
Follow instructions presented in [the website](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

### Set up Python
* Install Python (if you use Windows)
    * Go to the [official webpage](https://www.python.org/downloads/) and download Python for windows.
    * Follow the instalation process. IMPORTANT - Check `Add Python to PATH` checkmark ![](https://docs.blender.org/manual/en/dev/_images/about_contribute_install_windows_installer.png)
* Set up Pyenv:
   * OSX and Linux installation:
      * Follow the installation guide from here: https://github.com/pyenv/pyenv#installation
   * Windows installation:
      * Follow the installation guide from here: https://github.com/pyenv-win/pyenv-win
   * `$ pyenv install 3.9.13`
   * If you want to set the global Python version - `$ pyenv global 3.9.13`
* (Not recommended) Alternative - install a specific version of Python from https://www.python.org/downloads/

### Set up Poetry
* Install (full guide: https://python-poetry.org/docs/#installation)
* Configure:
    * `$ poetry config virtualenvs.in-project true` - creates the virtual environment in the current folder as opposed to somewhere random
    * `$ poetry self add poetry-dotenv-plugin` - enabled sourcing environment variables from .env when commands run through Poetry
    * `$ poetry config virtualenvs.prefer-active-python true` seems to make Poetry work better with Visual Studio Code

### Install dependencies
* Go to this project's dir with your terminal: `$ cd <PATH_TO_THE_PROJECT>`
* `$ poetry install` (this will create a `poetry.lock` file and a virtual environment in the .venv folder)
* If you use OSX / Linux
   * `$ source .venv/bin/activate` this will activate a newly created environment
* If you use windows
   * `.venv\Scripts\activate` this will activate a newly created environment
* Alternatively run `$ poetry shell` to initialize the environment.

### Set-up pre-commit
* `$ pre-commit install`

### Run the python file and see if you can get an output
* Execute Python file: `$ python src/main.py`
You should get this output:
```shell
        messages
0  Hello, World!
1      Sveikiii!
```

### Start Jupyter Lab and run notebook
* Start Jupyter Lab: `$ jupyter lab`
* Execute Notebook inside notebooks dir
