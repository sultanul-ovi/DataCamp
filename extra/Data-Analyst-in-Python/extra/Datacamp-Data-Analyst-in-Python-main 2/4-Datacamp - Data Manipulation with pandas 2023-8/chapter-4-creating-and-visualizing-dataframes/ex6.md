
#  Removing missing values

```
Exercise ID 1095679
```

##  Assignment 

Now that you know there are some missing values in your DataFrame, you have a few options to deal with them. One way is to remove them from the dataset completely. In this exercise, you'll remove missing values by removing all rows that contain missing values.

`pandas` has been imported as `pd` and `avocados_2016` is available.

##  Pre exercise code 

```
import pandas as pd
avocados_2016 = pd.read_pickle("/usr/local/share/datasets/avos_2016.pkl")
```



##  Instructions 

- Remove the rows of `avocados_2016` that contain missing values and store the remaining rows in `avocados_complete`.
- Verify that all missing values have been removed from `avocados_complete`. Calculate each column that has NAs and print.



```
# Remove rows with missing values
avocados_complete = ____

# Check if any columns contain missing values
print(____)
```

##  Hints 

- Call the method that **drop**s missing (NA) values.
- Use the `.any()` method in combination with another to check columns for missing values.



##  Solution 

```
# Remove rows with missing values
avocados_complete = avocados_2016.dropna()

# Check if any columns contain missing values
print(avocados_complete.isna().any())
```


