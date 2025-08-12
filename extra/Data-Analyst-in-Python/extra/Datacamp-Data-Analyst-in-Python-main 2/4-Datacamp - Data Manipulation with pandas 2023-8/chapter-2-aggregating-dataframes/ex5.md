
#  Dropping duplicates

```
Exercise ID 1095639
```

##  Assignment 

Removing duplicates is an essential skill to get accurate counts because often, you don't want to count the same thing multiple times. In this exercise, you'll create some new DataFrames using unique values from `sales`.

`sales` is available and `pandas` is imported as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")
```



##  Instructions 

- Remove rows of `sales` with duplicate pairs of `store` and `type` and save as `store_types` and print the head.
- Remove rows of `sales` with duplicate pairs of `store` and `department` and save as `store_depts` and print the head.
- Subset the rows that are holiday weeks using the `is_holiday` column, and drop the duplicate `date`s, saving as `holiday_dates`.
- Select the `date` column of `holiday_dates`, and print.



```
# Drop duplicate store/type combinations
store_types = ____
print(store_types.head())

# Drop duplicate store/department combinations
store_depts = ____
print(store_depts.head())

# Subset the rows where is_holiday is True and drop duplicate dates
holiday_dates = sales[sales[____]].drop_duplicates(____)

# Print date col of holiday_dates
print(____)
```

##  Hints 

- You can use the `.drop_duplicates()` method.
- The `subset` argument takes a column name or a list of column names.



##  Solution 

```
# Drop duplicate store/type combinations
store_types = sales.drop_duplicates(subset=["store", "type"])
print(store_types.head())

# Drop duplicate store/department combinations
store_depts = sales.drop_duplicates(subset=["store", "department"])
print(store_depts.head())

# Subset the rows where is_holiday is True and drop duplicate dates
holiday_dates = sales[sales["is_holiday"]].drop_duplicates(subset="date")

# Print date col of holiday_dates
print(holiday_dates["date"])
```


