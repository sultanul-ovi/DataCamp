
#  None

```
Exercise ID 1095654
```

##  Assignment 

##  Instructions 

- Print the mean `weekly_sales` by `department` and `type`, filling in any missing values with `0` and summing all rows and columns.



```
# Print the mean weekly_sales by department and type; fill missing values with 0s; sum all rows and cols
print(sales.pivot_table(values="weekly_sales", index="department", columns="type", ____))
```

##  Hints 

- Use the `margins` argument of `.pivot_table()` to sum all rows and columns of the resulting table.



##  Solution 

```
# Print the mean weekly_sales by department and type; fill missing values with 0s; sum all rows and cols
print(sales.pivot_table(values="weekly_sales", index="department", columns="type", fill_value=0, margins=True))
```


