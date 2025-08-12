
#  Efficient summaries

```
Exercise ID 1095633
```

##  Assignment 

While pandas and NumPy have tons of functions, sometimes, you may need a different function to summarize your data.

The `.agg()` method allows you to apply your own custom functions to a DataFrame, as well as apply functions to more than one column of a DataFrame at once, making your aggregations super-efficient. For example, 

```
df['column'].agg(function)

```

In the custom function for this exercise, "IQR" is short for inter-quartile range, which is the 75th percentile minus the 25th percentile. It's an alternative to standard deviation that is helpful if your data contains outliers.

`sales` is available and `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")
```



##  Solution 

No solution was found.


