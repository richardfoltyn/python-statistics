# Python for numerical computations and data analysis
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/richardfoltyn/python-statistics/main?filepath=index.ipynb)

Author: Richard Foltyn, University of Glasgow

## Units

This introductory course consists of several units. Each unit corresponds
to one interactive Jupyter notebook, which is also available
as a static PDF file.

1.  Crash course for the impatient [[PDF](latex/unit1.pdf)]
2.  Language and NumPy basics [[PDF](latex/unit2.pdf)]
3.  Control flow and list comprehensions [[PDF](latex/unit3.pdf)]
4.  Reusing code - Functions, modules and packages [[PDF](latex/unit4.pdf)]
5.  Plotting [[PDF](latex/unit5.pdf)]
6.  Advanced NumPy [[PDF](latex/unit6.pdf)]
7.  Random number generation and statistics [[PDF](latex/unit7.pdf)]
8.  Handling data with pandas [[PDF](latex/unit8.pdf)]
9.  Input and output [[PDF](latex/unit9.pdf)]

The the *launch binder* link at the top to start an interactive
notebook.

## Installation

### Running without installation

Click on the ![Binder](https://mybinder.org/badge_logo.svg) button
above to use the notebooks directly the your web browser. No location
Python environment is required.

### Running locally

To clone the repository, run

    git clone https://github.com/richardfoltyn/python-statistics.git

You will need a local Python environment (such as [Anaconda](https://www.anaconda.com/products/individual), the packages that come with your Linux distribution, etc.)
with the following packages installed:

-   Python >= 3.7
-   NumPy >= 1.17
-   SciPy
-   pandas
-   matplotlib
-   xlrd

To start the Jupyter notebook server, execute something like this

    cd path/to/repository
    jupyter notebook lectures/index.ipynb

## Licence

This material is licensed under a 
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/),
except for the data files contained in the `data/` folder, which
fall under the terms imposed by the original content creators.