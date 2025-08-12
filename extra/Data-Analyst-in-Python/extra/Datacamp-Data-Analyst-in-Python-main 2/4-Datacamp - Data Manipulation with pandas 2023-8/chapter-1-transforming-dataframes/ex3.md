
#  Sorting rows

```
Exercise ID 1095612
```

##  Assignment 

Finding interesting bits of data in a DataFrame is often easier if you change the order of the rows. You can sort the rows by passing a column name to `.sort_values()`.

In cases where rows have the same value (this is common if you sort on a categorical variable), you may wish to break the ties by sorting on another column. You can sort on multiple columns in this way by passing a list of column names.

|Sort on …|Syntax
|------
|one column|`df.sort_values("breed")`
|multiple columns|`df.sort_values(["breed", "weight_kg"])`

By combining `.sort_values()` with `.head()`, you can answer questions in the form, "What are the top cases where…?".

`homelessness` is available and `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
homelessness = pd.read_pickle("/usr/local/share/datasets/homeless_data.pkl")
```



##  Solution 

No solution was found.


