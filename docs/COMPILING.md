
# Generating PDFs from notebooks

## Configuration

### Jupyter nbconvert config file

The config file is in the repository and will be used automatically.
The relevant non-default options are:

    c.NbConvertApp.export_format = 'latex'
    c.ExecutePreprocessor.allow_errors = True
    c.ExecutePreprocessor.enabled = True


### IPython config file

The IPython config file controls two important aspects:

-   The verbosity of stack traces: this should be set to `'Minimal'`
    otherwise the PDFs are full of stack traces for errors we 
    trigger throughout the units.
-   Generating PDF graphs to be included in the static PDF.

The relevant options in `$HOME/.ipython/profile_default/ipython_config.py` are

    c.InteractiveShell.xmode = 'Minimal'
    c.InlineBackend.figure_formats = {'png', 'pdf'}

## Individual unit PDFs

1.  Generate preliminary LaTeX document:

        jupyter nbconvert --to=latex --output-dir=latex lectures/unitXX.ipynb

    Or for all documents at once:

        for file in lectures/unit*.ipynb; do
            jupyter nbconvert --to=latex --output-dir=latex ${file}
        done

2.  Fix most issues with generated LaTeX file by running:

        cd latex
        ../helpers/fix-latex.sh unitXX.sh

## Course book

1.  Merge individual notebooks using `nbmerge` which needs to be 
    installed via `pip`:

        cd lectures    
        nbmerge preface.ipynb unit*.ipynb -o python-course.ipynb
 
2.  Generate the preliminary LaTeX document:

        jupyter nbconvert --to=latex --output-dir=latex lectures/python-course.ipynb 

3.  Fix most issues with the generated LaTeX file by running:
    
        cd latex
        ../helpers/fix-book.sh python-course.tex