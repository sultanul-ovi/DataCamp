
#  Sorting by index values

```
Exercise ID 1095659
```

##  Assignment 

Previously, you changed the order of the rows in a DataFrame by calling `.sort_values()`. It's also useful to be able to sort by elements in the index. For this, you need to use `.sort_index()`.

`pandas` is loaded as `pd`. `temperatures_ind` has a multi-level index of `country` and `city`, and is available.

##  Pre exercise code 

```
import pandas as pd
temperatures = pd.read_pickle("/usr/local/share/datasets/temperatures_no_unc.pkl")

temperatures.sample(frac=1).reset_index(drop=True)
temperatures_ind = temperatures.set_index(["country", "city"])
```



##  Instructions 

- Sort `temperatures_ind` by the index values.
- Sort `temperatures_ind` by the index values at the `"city"` level.
- Sort `temperatures_ind` by ascending country then descending city.



```
# Sort temperatures_ind by index values
print(____)

# Sort temperatures_ind by index values at the city level
print(____)

# Sort temperatures_ind by country then descending city
print(____)
```

##  Hints 

- Call `.sort_index()` three times.
- In the most advanced case, you need to set `level` to a list of index level names and `ascending` to a list of Booleans.



##  Solution 

```
# Sort temperatures_ind by index values
print(temperatures_ind.sort_index())

# Sort temperatures_ind by index values at the city level
print(temperatures_ind.sort_index(level="city"))

# Sort temperatures_ind by country then descending city
print(temperatures_ind.sort_index(level=["country", "city"], ascending = [True, False]))
```


