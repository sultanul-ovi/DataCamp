
#  None

```
Exercise ID 1095644
```

##  Assignment 

##  Instructions 

- Group `sales` by `"type"`, take the sum of `"weekly_sales"`, and store as `sales_by_type`.
- Calculate the proportion of sales at each store type by dividing by the sum of `sales_by_type`. Assign to `sales_propn_by_type`.



```
# Group by type; calc total weekly sales
sales_by_type = ____.____("____")["____"].____()

# Get proportion for each type
sales_propn_by_type = ____ / sum(____)
print(sales_propn_by_type)
```

##  Hints 

- Call `.groupby()`, passing `"type"`, then select the `weekly_sales` column and call `.sum()`
- You can use the `sum()` function on `sales_by_type` to get the total sales.



##  Solution 

```
# Group by type; calc total weekly sales
sales_by_type = sales.groupby("type")["weekly_sales"].sum()

# Get proportion for each type
sales_propn_by_type = sales_by_type / sum(sales_by_type)
print(sales_propn_by_type)
```


