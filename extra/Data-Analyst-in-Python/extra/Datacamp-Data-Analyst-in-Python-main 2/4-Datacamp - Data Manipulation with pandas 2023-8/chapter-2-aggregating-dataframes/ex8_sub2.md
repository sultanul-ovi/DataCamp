
#  None

```
Exercise ID 1095645
```

##  Assignment 

##  Instructions 

- Group `sales` by `"type"` and "`is_holiday`", take the sum of `weekly_sales`, and store as `sales_by_type_is_holiday`.



```
# From previous step
sales_by_type = sales.groupby("type")["weekly_sales"].sum()

# Group by type and is_holiday; calc total weekly sales
sales_by_type_is_holiday = ____
print(sales_by_type_is_holiday)
```

##  Hints 

Just like the previous step, you need to group the DataFrame before selecting the `weekly_sales` column.



##  Solution 

```
# From previous step
sales_by_type = sales.groupby("type")["weekly_sales"].sum()

# Group by type and is_holiday; calc total weekly sales
sales_by_type_is_holiday = sales.groupby(["type", "is_holiday"])["weekly_sales"].sum()
print(sales_by_type_is_holiday)
```


