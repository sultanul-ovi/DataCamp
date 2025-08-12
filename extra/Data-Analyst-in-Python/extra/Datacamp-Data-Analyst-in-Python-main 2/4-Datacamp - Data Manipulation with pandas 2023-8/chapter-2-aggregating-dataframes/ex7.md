
#  What percent of sales occurred at each store type?

```
Exercise ID 1095642
```

##  Assignment 

While `.groupby()` is useful, you can calculate grouped summary statistics without it. 

Walmart distinguishes three types of stores: "supercenters," "discount stores," and "neighborhood markets," encoded in this dataset as type "A," "B," and "C." In this exercise, you'll calculate the total sales made at each store type, without using `.groupby()`. You can then use these numbers to see what proportion of Walmart's total sales were made at each type.

`sales` is available and `pandas` is imported as `pd`.

##  Pre exercise code 

```
import pandas as pd
sales = pd.read_pickle("/usr/local/share/datasets/sales_subset.pkl.bz2")
```



##  Instructions 

- Calculate the total `weekly_sales` over the whole dataset.
- Subset for `type` `"A"` stores, and calculate their total weekly sales.
- Do the same for `type` `"B"` and `type` `"C"` stores.
- Combine the A/B/C results into a list, and divide by `sales_all` to get the proportion of sales by type.



```
# Calc total weekly sales
sales_all = ____["____"].____()

# Subset for type A stores, calc total weekly sales
sales_A = ____[____["____"] == "____"]["____"].____()

# Subset for type B stores, calc total weekly sales
sales_B = ____

# Subset for type C stores, calc total weekly sales
sales_C = ____

# Get proportion for each type
sales_propn_by_type = [sales_A, ____, ____] / ____
print(sales_propn_by_type)
```

##  Hints 

- For overall sales, select the `"weekly_sales"` column, then calculate the sum.
- For store type-specific sales, use a Boolean condition like `sales["type"] == "some_value"` to subset, before selecting the sales column and calculating the sum.
- You can divide the whole list by `sales_all`.



##  Solution 

```
# Calc total weekly sales
sales_all = sales["weekly_sales"].sum()

# Subset for type A stores, calc total weekly sales
sales_A = sales[sales["type"] == "A"]["weekly_sales"].sum()

# Subset for type B stores, calc total weekly sales
sales_B = sales[sales["type"] == "B"]["weekly_sales"].sum()

# Subset for type C stores, calc total weekly sales
sales_C = sales[sales["type"] == "C"]["weekly_sales"].sum()

# Get proportion for each type
sales_propn_by_type = [sales_A, sales_B, sales_C] / sales_all
print(sales_propn_by_type)
```


