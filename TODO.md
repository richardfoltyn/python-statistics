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
        