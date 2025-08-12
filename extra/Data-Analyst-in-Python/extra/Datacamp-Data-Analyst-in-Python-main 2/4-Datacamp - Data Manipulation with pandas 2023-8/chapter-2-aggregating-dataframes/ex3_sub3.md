
#  None

```
Exercise ID 1095636
```

##  Assignment 

##  Instructions 

- Update the aggregation functions called by `.agg()`: include `iqr` and `np.median` in that order.



```
# Import NumPy and create custom IQR function
import numpy as np
def iqr(column):
    return column.quantile(0.75) - column.quantile(0.25)

# Update to print IQR and median of temperature_c, fuel_price_usd_per_l, & unemployment
print(sales[["temperature_c", "fuel_price_usd_per_l", "unemployment"]].agg(iqr))
```

##  Hints 

- Instead of passing just `iqr` to `.agg()`, pass a **list** of functions without parentheses to `.agg()`.



##  Solution 

```
# Import NumPy and create custom IQR function
import numpy as np
def iqr(column):
    return column.quantile(0.75) - column.quantile(0.25)

# Update to print IQR and median of temperature_c, fuel_price_usd_per_l, & unemployment
print(sales[["temperature_c", "fuel_price_usd_per_l", "unemployment"]].agg([iqr, np.median]))
```


