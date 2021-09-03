# Python for numerical computations and data analysis
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/richardfoltyn/python-statistics/main?filepath=index.ipynb)

Author: Richard Foltyn, University of Glasgow

## Units

This introductory course consists of several units. Each unit corresponds
to one interactive Jupyter notebook, which is also available
as a static PDF file. Alternatively, you can download the entire course as a 
**[single PDF](latex/python-course.pdf)**.

1.  Crash course for the impatient [[PDF](latex/unit01.pdf)]
2.  Language and NumPy basics [[PDF](latex/unit02.pdf)]
3.  Control flow and list comprehensions [[PDF](latex/unit03.pdf)]
4.  Reusing code - Functions, modules and packages [[PDF](latex/unit04.pdf)]
5.  Plotting [[PDF](latex/unit05.pdf)]
6.  Advanced NumPy [[PDF](latex/unit06.pdf)]
7.  Random number generation and statistics [[PDF](latex/unit07.pdf)]
8.  Handling data with pandas [[PDF](latex/unit08.pdf)]
9.  Data input and output [[PDF](latex/unit09.pdf)]
10. Error handling [[PDF](latex/unit10.pdf)]

The *launch binder* link at the top to start an interactive
notebook.

***

## Installation

### Running without installation

Click on the ![Binder](https://mybinder.org/badge_logo.svg) button
above to use the notebooks directly in your web browser 
(in might take a while to set up the environment). No local
Python installation is required.

### Running locally

#### Download the repository contents

If you are familiar with git, clone the repository:
```bash
git clone https://github.com/richardfoltyn/python-statistics.git
```
Otherwise, download the contents as a ZIP file by clicking on
![Code](images/gh-code.png) above.

#### Install Anaconda

On Windows, you need to install a local Python environment such as 
[Anaconda](https://www.anaconda.com/products/individual). On Linux,
your distribution comes with Python but the required packages are most likely
outdated, so it is still recommended installing Anaconda.

##### Windows

Once Anaconda is installed, click on _Jupyter Notebook_ in the Start menu
and navigate to where you extracted the repository contents. Select
`index.ipynb` to run the main notebook.

![Jupyter Notebook](images/conda-start.png)

##### Linux

You need to create a new Python environment which contains all the 
required packages. You can use the specification provided in [environment.yml](environment.yml)
to accomplish that:
```bash
conda env create -f environment.yml
```
Activate the virtual environment you just created:
```bash
conda activate python-statistics
```
To start the Jupyter notebook server, navigate to where you extracted
the repository contents and run
```bash
cd path/to/repository
jupyter notebook index.ipynb
```


***

## Licence

This material is licensed under a 
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/),
except for the data files contained in the `data/` folder, which
fall under the terms imposed by the original content creators.

## Credits

Special thanks go to Jonna Olsson for reading through all units and
suggesting various improvements.