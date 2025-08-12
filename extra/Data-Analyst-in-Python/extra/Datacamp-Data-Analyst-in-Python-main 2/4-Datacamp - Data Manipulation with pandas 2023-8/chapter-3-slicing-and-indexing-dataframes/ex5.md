
#  Slicing index values

```
Exercise ID 1095661
```

##  Assignment 

Slicing lets you select consecutive elements of an object using `first:last` syntax. DataFrames can be sliced by index values or by row/column number; we'll start with the first case. This involves slicing inside the `.loc[]` method.

Compared to slicing lists, there are a few things to remember.

- You can only slice an index if the index is sorted (using `.sort_index()`).
- To slice at the outer level, `first` and `last` can be strings.
- To slice at inner levels, `first` and `last` should be tuples.
- If you pass a single slice to `.loc[]`, it will slice the rows.

`pandas` is loaded as `pd`. `temperatures_ind` has country and city in the index, and is available.

##  Pre exercise code 

```
import pandas as pd
temperatures = pd.read_pickle("/usr/local/share/datasets/temperatures_no_unc.pkl")

temperatures_ind = temperatures.set_index(["country", "city"])
```



##  Instructions 

- Sort the index of `temperatures_ind`.
<li>Use slicing with `.loc[]` to get these subsets:<ul>
- from Pakistan to Russia.
- from Lahore to Moscow. (**This will return nonsense.**)
- from Pakistan, Lahore to Russia, Moscow.


```
# Sort the index of temperatures_ind
temperatures_srt = ____

# Subset rows from Pakistan to Russia
print(____)

# Try to subset rows from Lahore to Moscow
print(____)

# Subset rows from Pakistan, Lahore to Russia, Moscow
print(____)
```

##  Hints 

- Call `.sort_index()` without arguments.
- Slice with code in the form `df.loc["a":"b"]` twice.
- Then slice with code like `df.loc[("a", "b"):("c", "d")]`.



##  Solution 

```
# Sort the index of temperatures_ind
temperatures_srt = temperatures_ind.sort_index()

# Subset rows from Pakistan to Russia
print(temperatures_srt.loc["Pakistan":"Russia"])

# Try to subset rows from Lahore to Moscow
print(temperatures_srt.loc["Lahore":"Moscow"])

# Subset rows from Pakistan, Lahore to Russia, Moscow
print(temperatures_srt.loc[("Pakistan", "Lahore"):("Russia", "Moscow")])
```


