
# Generating PDFs from notebooks

## Configuration

### Jupyter nbconvert config file

The config file is in the repository and will be used automatically.
The relevant non-default options are:

    c.NbConvertApp.export_format = 'latex'
    c.ExecutePreprocessor.allow_errors = True

Optionally, adding the following will trigger a notebook to be executed
before it is exported.

    c.ExecutePreprocessor.enabled = True

If execution takes a long time, it might be better to avoid this and 
pass the `--execute` argument to `jupyter nbconvert` as needed. Note that
changes to Markdown cells correctly detected even without executing the notebook!

Note that a fresh template config file with all default values can 
be generated via
    
    jupyter nbconvert --generate-config 

which will be placed in a default directory.

### IPython config file

The IPython config file controls two important aspects:

- The verbosity of stack traces: this should be set to `'Minimal'`
    otherwise the PDFs are full of stack traces for errors we 
    trigger throughout the units.
- Generating PDF graphs to be included in the static PDF.
- Scale down the default figure size as figures in the PDF are way too large.
- Matplotlib graphs need to be shown `inline`, otherwise they don't appear in 
  the notebook or PDF.

The relevant options in `$HOME/.ipython/profile_default/ipython_config.py` are

    c.InteractiveShellApp.matplotlib = 'inline'
    c.InteractiveShell.xmode = 'Minimal'
    c.InlineBackend.figure_formats = {'png', 'pdf'}
    c.InlineBackend.rc = { 
            'figure.figsize': (4.0, 3.0),
            'font.size': 8,
            'font.family': 'serif'
    }

A new config file with all the default values can be generated as part
of a new profile via

    ipython profile create

## Individual unit PDFs

1. Generate preliminary LaTeX document:

        jupyter nbconvert --to=latex --output-dir=latex lectures/unitXX.ipynb

    Or for all documents at once:

        for file in lectures/unit*.ipynb; do
            jupyter nbconvert --to=latex --output-dir=latex ${file}
        done

    Alternatively, if the notebooks should be executed prior to export, run

        jupyter nbconvert --execute --to=latex --output-dir=latex lectures/unitXX.ipynb

2. Fix most issues with generated LaTeX file by running:

        cd latex
        ../helpers/fix-latex.sh unitXX.tex

3. Use diff view to identify the remaining the commands that need to inserted
   manually (until someone defines a better template for LaTeX output). 

## Course book

1.  Make sure that `nbmerge` is installed in the local environment. This
    can be achieved using `pip` by running

        pip install nbmerge

2.  Merge individual notebooks using `nbmerge`:

        cd lectures    
        nbmerge preface.ipynb unit*.ipynb -o python-course.ipynb
 
3.  Generate the preliminary LaTeX document:

        jupyter nbconvert --to=latex --output-dir=latex lectures/python-course.ipynb 

4.  Fix most issues with the generated LaTeX file by running:
    
        cd latex
        ../helpers/fix-book.sh python-course.tex
