
#  Multiple grouped summaries

```
Exercise ID 1095646
```

##  Assignment 

Earlier in this chapter, you saw that the `.agg()` method is useful to compute multiple statistics on multiple variables. It also works with grouped data. NumPy, which is imported as `np`, has many different summary statistics functions, including: `np.min`, `np.max`, `np.mean`, and `np.median`.

`sales` is available and `pandas` is imported as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")
```



##  Instructions 

- Import `numpy` with the alias `np`.
- Get the min, max, mean, and median of `weekly_sales` for each store type using `.groupby()` and `.agg()`. Store this as `sales_stats`. Make sure to use `numpy` functions!
- Get the min, max, mean, and median of `unemployment` and `fuel_price_usd_per_l` for each store type. Store this as `unemp_fuel_stats`.



```
# Import numpy with the alias np
____

# For each store type, aggregate weekly_sales: get min, max, mean, and median
sales_stats = ____

# Print sales_stats
print(sales_stats)

# For each store type, aggregate unemployment and fuel_price_usd_per_l: get min, max, mean, and median
unemp_fuel_stats = ____

# Print unemp_fuel_stats
print(unemp_fuel_stats)
```

##  Hints 

- `.agg()` can take in a list of functions. The functions shouldn't be called, so don't use parentheses with them.
- Remember to `.groupby()` before selecting columns.
- Multiple column selection can be done with double-brackets, `df[["col_a", "col_b"]]`.
- Note that the column name is `fuel_price_usd_per_l` with a lowercase "L" at the end, not the number 1.



##  Solution 

```
# Import numpy with the alias np
import numpy as np

# For each store type, aggregate weekly_sales: get min, max, mean, and median
sales_stats = sales.groupby("type")["weekly_sales"].agg([np.min, np.max, np.mean, np.median])

# Print sales_stats
print(sales_stats)

# For each store type, aggregate unemployment and fuel_price_usd_per_l: get min, max, mean, and median
unemp_fuel_stats = sales.groupby("type")[["unemployment", "fuel_price_usd_per_l"]].agg([np.min, np.max, np.mean, np.median])

# Print unemp_fuel_stats
print(unemp_fuel_stats)
```


