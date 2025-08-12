
#  Counting categorical variables

```
Exercise ID 1095640
```

##  Assignment 

Counting is a great way to get an overview of your data and to spot curiosities that you might not notice otherwise. In this exercise, you'll count the number of each type of store and the number of each department number using the DataFrames you created in the previous exercise:

```
# Drop duplicate store/type combinations
store_types = sales.drop_duplicates(subset=["store", "type"])

# Drop duplicate store/department combinations
store_depts = sales.drop_duplicates(subset=["store", "department"])

```

The `store_types` and `store_depts` DataFrames you created in the last exercise are available, and `pandas` is imported as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")

# Drop duplicate store/type combinations
store_types = sales.drop_duplicates(subset=["store", "type"]).reset_index(drop=True)

# Drop duplicate store/department combinations
store_depts = sales.drop_duplicates(subset=["store", "department"]).reset_index(drop=True)

del sales
```



##  Instructions 

- Count the number of stores of each store `type` in `store_types`.
- Count the proportion of stores of each store `type` in `store_types`.
- Count the number of different `department`s in `store_depts`, sorting the counts in descending order.
- Count the proportion of different `department`s in `store_depts`, sorting the proportions in descending order.



```
# Count the number of stores of each type
store_counts = ____
print(store_counts)

# Get the proportion of stores of each type
store_props = ____
print(store_props)

# Count the number of each department number and sort
dept_counts_sorted = ____
print(dept_counts_sorted)

# Get the proportion of departments of each number and sort
dept_props_sorted = ____.____(sort=____, normalize=____)
print(dept_props_sorted)
```

##  Hints 

- Select the `type` column of `store_types`, then call `.value_counts()`.
- Select the `department` column of `store_depts` and call `.value_counts()`.
- To calculate proportions, set `normalize` to `True` in `.value_counts()`.
- To sort the counts, set `sort` to `True`.



##  Solution 

```
# Count the number of stores of each type
store_counts = store_types["type"].value_counts()
print(store_counts)

# Get the proportion of stores of each type
store_props = store_types["type"].value_counts(normalize=True)
print(store_props)

# Count the number of each department number and sort
dept_counts_sorted = store_depts["department"].value_counts(sort=True)
print(dept_counts_sorted)

# Get the proportion of departments of each number and sort
dept_props_sorted = store_depts["department"].value_counts(sort=True, normalize=True)
print(dept_props_sorted)
```


