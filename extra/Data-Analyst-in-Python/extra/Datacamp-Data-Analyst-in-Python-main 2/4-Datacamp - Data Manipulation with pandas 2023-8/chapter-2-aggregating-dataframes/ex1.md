
#  Mean and median

```
Exercise ID 1095631
```

##  Assignment 

Summary statistics are exactly what they sound like - they summarize many numbers in one statistic. For example, mean, median, minimum, maximum, and standard deviation are summary statistics. Calculating summary statistics allows you to get a better sense of your data, even if there's a lot of it. 

`sales` is available and `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")
```



##  Instructions 

- Explore your new DataFrame first by printing the first few rows of the `sales` DataFrame.
- Print information about the columns in `sales`.
- Print the mean of the `weekly_sales` column.
- Print the median of the `weekly_sales` column.



```
# Print the head of the sales DataFrame
print(____)

# Print the info about the sales DataFrame
print(____)

# Print the mean of weekly_sales
print(____)

# Print the median of weekly_sales
print(____)
```

##  Hints 

- Use the `.head()` method to print the first few rows.
- Use the `.info()` method to print column information.
- You can calculate the mean using `.mean()` on a column.
- You can calculate the median using `.median()` on a column.



##  Solution 

```
# Print the head of the sales DataFrame
print(sales.head())

# Print the info about the sales DataFrame
print(sales.info())

# Print the mean of weekly_sales
print(sales["weekly_sales"].mean())

# Print the median of weekly_sales
print(sales["weekly_sales"].median())
```


