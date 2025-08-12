
#  None

```
Exercise ID 1095653
```

##  Assignment 

##  Instructions 

- Print the mean `weekly_sales` by `department` and `type`, filling in any missing values with `0`.



```
# Print mean weekly_sales by department and type; fill missing values with 0
print(sales.pivot_table(____))
```

##  Hints 

Call `.pivot_table()`, passing `"weekly_sales"`, and setting `index` to `"department"`, `columns` to `"type"` and `fill_value` to zero.



##  Solution 

```
# Print mean weekly_sales by department and type; fill missing values with 0
print(sales.pivot_table(values="weekly_sales", index="department", columns="type", fill_value=0))
```


