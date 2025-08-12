
#  None

```
Exercise ID 1095650
```

##  Assignment 

##  Instructions 

- Get the mean and median (using NumPy functions) of `weekly_sales` by `type` using `.pivot_table()` and store as `mean_med_sales_by_type`.



```
# Import NumPy as np
import numpy as np

# Pivot for mean and median weekly_sales for each store type
mean_med_sales_by_type = sales.pivot_table(____)

# Print mean_med_sales_by_type
print(mean_med_sales_by_type)
```

##  Hints 

- The `aggfunc` argument of `.pivot_table()` takes in a list of functions (without parentheses) that you want to use to summarize the `values`.
- Use `np.mean()` to calculate mean and `np.median()` to calculate median.



##  Solution 

```
# Import NumPy as np
import numpy as np

# Pivot for mean and median weekly_sales for each store type
mean_med_sales_by_type = sales.pivot_table(values="weekly_sales", index="type", aggfunc=[np.mean, np.median])

# Print mean_med_sales_by_type
print(mean_med_sales_by_type)
```


