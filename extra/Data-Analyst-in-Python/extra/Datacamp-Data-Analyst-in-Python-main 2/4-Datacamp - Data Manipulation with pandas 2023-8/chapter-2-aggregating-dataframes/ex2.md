
#  Summarizing dates

```
Exercise ID 1095632
```

##  Assignment 

Summary statistics can also be calculated on date columns that have values with the data type `datetime64`. Some summary statistics — like mean — don't make a ton of sense on dates, but others are super helpful, for example, minimum and maximum, which allow you to see what time range your data covers.

`sales` is available and `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")
```



##  Instructions 

- Print the maximum of the `date` column.
- Print the minimum of the `date` column.



```
# Print the maximum of the date column
____

# Print the minimum of the date column
____
```

##  Hints 

- You can get the maximum using `.max()` on a column.
- You can get the minimum using `.min()` on a column.



##  Solution 

```
# Print the maximum of the date column
print(sales["date"].max())

# Print the minimum of the date column
print(sales["date"].min())
```


