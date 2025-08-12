
#  None

```
Exercise ID 1095634
```

##  Assignment 

##  Instructions 

- Use the custom `iqr` function defined for you along with `.agg()` to print the IQR of the `temperature_c` column of `sales`.



```
# A custom IQR function
def iqr(column):
    return column.quantile(0.75) - column.quantile(0.25)
    
# Print IQR of the temperature_c column
print(____)
```

##  Hints 

Call `.agg()` on the `temperature_c` column of sales, passing in the `iqr` function without parentheses.



##  Solution 

```
# A custom IQR function
def iqr(column):
    return column.quantile(0.75) - column.quantile(0.25)
    
# Print IQR of the temperature_c column
print(sales["temperature_c"].agg(iqr))
```


