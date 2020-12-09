# Todo list

## Unit 2

1.  Add `bool` to basic built-in types

## Unit 3

1.  Add  [conditional expressions](https://docs.python.org/3/reference/expressions.html#conditional-expressions)

## Unit 4

1.  Modules: mention PYTHONPATH and why importing module
    in notebook might not work
2.  Change value of `var` in unit4_mod to read:
    ```
    var = 'Defined in unit4_mod'
    ```
3.  Start discussion of local vs. outer scope using a more simple example
    without arguments:

        var = 'outer'

        def func():
            var = 'inner'

        print(f'var = {var}')
4.  Add option/comment that `lectures/` might need to be 
    added to PYTHONPATH for notebooks executed via binder.

## Unit 8

1.  Section on manipulating indices:
    
    -   Add example of how to create `DataFrame` or `Series`
        with non-default index:
        
            pd.DataFrame(data, index=..., columns=...)

2.  Add more examples to `agg()` section:

        groups.agg([func1, func2, ...])
        groups.agg({'Column1': func1, 'Column2': func2}

3.  Add even simpler `plot()` examples using a `Series` object.
4.  Use differement parameters for normal distributions in box plot.

## Unit 9

1.  Add example of how one would store file to current directory:

        file = 'data.txt'
        np.savetxt(file, data)

## Unit 10

1.  Add `FileNotFoundError` to list of example exceptions. Can be triggered by
    
        open('file_does_not_exists.txt', 'rt')

2.  Change fix for out-of-bounds to read

        items = 1, 2, 3
        idx = 100
        items[min(len(items)-1, idx)]

3.  Add rules between sections