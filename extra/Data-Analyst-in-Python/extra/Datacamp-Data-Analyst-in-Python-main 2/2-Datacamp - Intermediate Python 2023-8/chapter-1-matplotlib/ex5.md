
#  Scatter plot (2)

```
Exercise ID 15117
```

##  Assignment 

In the previous exercise, you saw that the higher GDP usually corresponds to a higher life expectancy. In other words, there is a positive correlation.

Do you think there's a relationship between population and life expectancy of a country? The list `life_exp` from the previous exercise is already available. In addition, now also `pop` is available, listing the corresponding populations for the countries in 2007. The populations are in millions of people.

##  Pre exercise code 

```
import matplotlib.pyplot as plt; import importlib; importlib.reload(plt)
import pandas as pd
plt.clf()

df = pd.read_csv('https://assets.datacamp.com/course/intermediate_python/gapminder.csv', index_col = 0)
pop = list(df['population']/1000000)
life_exp = list(df.life_exp)
```



##  Instructions 

- Start from scratch: import `matplotlib.pyplot` as `plt`.
- Build a scatter plot, where `pop` is mapped on the horizontal axis, and `life_exp` is mapped on the vertical axis. 
- Finish the script with `plt.show()` to actually display the plot. Do you see a correlation?



```
# Import package


# Build Scatter plot


# Show plot

```

##  Hints 

- Use [`plt.scatter()`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.scatter.html), with the correct arguments, followed by `plt.show()`.



##  Solution 

```
# Import package
import matplotlib.pyplot as plt

# Build Scatter plot
plt.scatter(pop, life_exp)

# Show plot
plt.show()
```


