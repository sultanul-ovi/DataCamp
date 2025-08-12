
#  Cumulative statistics

```
Exercise ID 1095637
```

##  Assignment 

Cumulative statistics can also be helpful in tracking summary statistics over time. In this exercise, you'll calculate the cumulative sum and cumulative max of a department's weekly sales, which will allow you to identify what the total sales were so far as well as what the highest weekly sales were so far. 

A DataFrame called `sales_1_1` has been created for you, which contains the sales data for department 1 of store 1. `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")
is_store_1 = sales["store"] == 1
is_dept_1 = sales["department"] == 1

sales_1_1 = sales[is_store_1 & is_dept_1].copy().sample(frac=1)
```



##  Instructions 

- Sort the rows of `sales_1_1` by the `date` column in ascending order.
- Get the cumulative sum of `weekly_sales` and add it as a new column of `sales_1_1` called `cum_weekly_sales`.
- Get the cumulative maximum of `weekly_sales`, and add it as a column called `cum_max_sales`.
- Print the `date`, `weekly_sales`, `cum_weekly_sales`, and `cum_max_sales` columns.



```
# Sort sales_1_1 by date
sales_1_1 = ____

# Get the cumulative sum of weekly_sales, add as cum_weekly_sales col
sales_1_1[____] = ____

# Get the cumulative max of weekly_sales, add as cum_max_sales col
____

# See the columns you calculated
print(sales_1_1[["date", "weekly_sales", "cum_weekly_sales", "cum_max_sales"]])
```

##  Hints 

- You can sort rows of a DataFrame using `.sort_values()`.
- Use the `.cumsum()` method on a column to get a cumulative sum.
- Use the `.cummax()` method on a column to get the cumulative maximum.
- Remember that you need to use double-brackets to subset multiple columns.



##  Solution 

```
# Sort sales_1_1 by date
sales_1_1 = sales_1_1.sort_values("date")

# Get the cumulative sum of weekly_sales, add as cum_weekly_sales col
sales_1_1["cum_weekly_sales"] = sales_1_1["weekly_sales"].cumsum()

# Get the cumulative max of weekly_sales, add as cum_max_sales col
sales_1_1["cum_max_sales"] = sales_1_1["weekly_sales"].cummax()

# See the columns you calculated
print(sales_1_1[["date", "weekly_sales", "cum_weekly_sales", "cum_max_sales"]])
```


