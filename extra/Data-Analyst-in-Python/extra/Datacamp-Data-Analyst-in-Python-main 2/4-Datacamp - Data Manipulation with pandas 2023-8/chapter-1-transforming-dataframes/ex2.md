
#  Parts of a DataFrame

```
Exercise ID 1095610
```

##  Assignment 

To better understand DataFrame objects, it's useful to know that they consist of three components, stored as attributes:

- `.values`: A two-dimensional NumPy array of values.
- `.columns`: An index of columns: the column names.
- `.index`: An index for the rows: either row numbers or row names.

You can usually think of indexes as a list of strings or numbers, though the pandas `Index` data type allows for more sophisticated options. (These will be covered later in the course.)

`homelessness` is available.

##  Pre exercise code 

```
import pandas as pd
homelessness = pd.read_pickle("/usr/local/share/datasets/homeless_data.pkl")
del pd
```



##  Instructions 

- Import `pandas` using the alias `pd`.
- Print a 2D NumPy array of the values in `homelessness`.
- Print the column names of `homelessness`.
- Print the index of `homelessness`.



```
# Import pandas using the alias pd
____

# Print the values of homelessness
____

# Print the column index of homelessness
____

# Print the row index of homelessness
____
```

##  Hints 

- To import a package with an alias, use `as`.
- Call `.values` (no parentheses) on `homelessness`.
- Call `.columns` (no parentheses) on `homelessness`.
- Call `.index` (no parentheses) on `homelessness`.



##  Solution 

```
# Import pandas using the alias pd
import pandas as pd

# Print the values of homelessness
print(homelessness.values)

# Print the column index of homelessness
print(homelessness.columns)

# Print the row index of homelessness
print(homelessness.index)
```


