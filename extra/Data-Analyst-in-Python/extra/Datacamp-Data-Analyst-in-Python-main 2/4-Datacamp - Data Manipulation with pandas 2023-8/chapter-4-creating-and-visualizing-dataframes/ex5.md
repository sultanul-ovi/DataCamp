
#  Finding missing values

```
Exercise ID 1095678
```

##  Assignment 

Missing values are everywhere, and you don't want them interfering with your work. Some functions ignore missing data by default, but that's not always the behavior you might want. Some functions can't handle missing values at all, so these values need to be taken care of before you can use them. If you don't know where your missing values are, or if they exist, you could make mistakes in your analysis. In this exercise, you'll determine if there are missing values in the dataset, and if so, how many.

`pandas` has been imported as `pd` and `avocados_2016`, a subset of `avocados` that contains only sales from 2016, is available.

##  Pre exercise code 

```
import pandas as pd
avocados_2016 = pd.read_pickle("/usr/local/share/datasets/avos_2016.pkl")
```



##  Instructions 

- Print a DataFrame that shows whether each value in `avocados_2016` is missing or not.
- Print a summary that shows whether **any** value in each column is missing or not.
- Create a bar plot of the total number of missing values in each column.



```
# Import matplotlib.pyplot with alias plt
import matplotlib.pyplot as plt

# Check individual values for missing values
print(____)

# Check each column for missing values
print(____)

# Bar plot of missing values by variable
____

# Show plot
plt.show()
```

##  Hints 

- Use the `.isna()` method to check each individual value for missingness.
- The `.any()` method will take a DataFrame of Booleans and flatten it to indicate if there are **any** `True` values in each column.
- The `.sum()` method can be used on a DataFrame of Booleans to count the number of `True` values in each column.
- Call `.plot()`, setting `kind` to `"bar"` to draw a bar plot.



##  Solution 

```
# Import matplotlib.pyplot with alias plt
import matplotlib.pyplot as plt

# Check individual values for missing values
print(avocados_2016.isna())

# Check each column for missing values
print(avocados_2016.isna().any())

# Bar plot of missing values by variable
avocados_2016.isna().sum().plot(kind="bar")

# Show plot
plt.show()
```


