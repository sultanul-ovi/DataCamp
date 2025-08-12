
#  Scatter Plot (1)

```
Exercise ID 15599
```

##  Assignment 

When you have a time scale along the horizontal axis, the line plot is your friend. But in many other cases, when you're trying to assess if there's a correlation between two variables, for example, the scatter plot is the better choice. Below is an example of how to build a scatter plot.

```
import matplotlib.pyplot as plt
plt.scatter(x,y)
plt.show()

```

Let's continue with the `gdp_cap` versus `life_exp` plot, the GDP and life expectancy data for different countries in 2007. Maybe a scatter plot will be a better alternative?

Again, the `matplotlib.pyplot` package is available as `plt`.

##  Pre exercise code 

```
import matplotlib.pyplot as plt; import importlib; importlib.reload(plt)
import pandas as pd
plt.clf()

df = pd.read_csv('https://assets.datacamp.com/course/intermediate_python/gapminder.csv', index_col = 0)
gdp_cap = list(df.gdp_cap)
life_exp = list(df.life_exp)
```



##  Instructions 

- Change the line plot that's coded in the script to a scatter plot.
- A correlation will become clear when you display the GDP per capita on a logarithmic scale. Add the line `plt.xscale('log')`.
- Finish off your script with `plt.show()` to display the plot.



```
# Change the line plot below to a scatter plot
plt.plot(gdp_cap, life_exp)

# Put the x-axis on a logarithmic scale


# Show plot

```

##  Hints 

- In the [`plt.plot()`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.plot.html) command, change `plot` by `scatter`.
- Put `plt.xscale('log')` between the [`plt.scatter()`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.scatter.html) and the `plt.show()` call.



##  Solution 

```
# Change the line plot below to a scatter plot
plt.scatter(gdp_cap, life_exp)

# Put the x-axis on a logarithmic scale
plt.xscale('log')

# Show plot
plt.show()
```


