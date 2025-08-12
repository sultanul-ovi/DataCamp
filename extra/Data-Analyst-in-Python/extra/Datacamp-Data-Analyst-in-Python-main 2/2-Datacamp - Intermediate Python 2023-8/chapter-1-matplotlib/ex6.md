
#  Build a histogram (1)

```
Exercise ID 15600
```

##  Assignment 

`life_exp`, the list containing data on the life expectancy for different countries in 2007, is available in your Python shell.

To see how life expectancy in different countries is distributed, let's create a histogram of `life_exp`.

`matplotlib.pyplot` is already available as `plt`.

##  Pre exercise code 

```
import matplotlib.pyplot as plt; import importlib; importlib.reload(plt)
import pandas as pd
plt.clf()
df = pd.read_csv('https://assets.datacamp.com/course/intermediate_python/gapminder.csv', index_col = 0)
life_exp = list(df.life_exp)
```



##  Instructions 

- Use [`plt.hist()`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.hist.html) to create a histogram of the values in `life_exp`. Do not specify the number of bins; Python will set the number of bins to 10 by default for you.
- Add `plt.show()` to actually display the histogram. Can you tell which bin contains the most observations?



```
# Create histogram of life_exp data


# Display histogram

```

##  Hints 

- `plt.hist(life_exp)` will create a histogram of the data in `life_exp`.



##  Solution 

```
# Create histogram of life_exp data
plt.hist(life_exp)

# Display histogram
plt.show()
```


