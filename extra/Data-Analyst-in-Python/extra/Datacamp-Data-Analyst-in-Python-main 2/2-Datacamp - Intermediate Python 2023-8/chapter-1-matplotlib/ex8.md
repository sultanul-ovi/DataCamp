
#  Build a histogram (3): compare

```
Exercise ID 15602
```

##  Assignment 

In the video, you saw population pyramids for the present day and for the future. Because we were using a histogram, it was very easy to make a comparison.

Let's do a similar comparison. `life_exp` contains life expectancy data for different countries in 2007. You also have access to a second list now, `life_exp1950`, containing similar data for 1950. Can you make a histogram for both datasets?

You'll again be making two plots. The `plt.show()` and `plt.clf()` commands to render everything nicely are already included. Also `matplotlib.pyplot` is imported for you, as `plt`.

##  Pre exercise code 

```
import matplotlib.pyplot as plt; import importlib; importlib.reload(plt)
import pandas as pd
plt.clf()
df = pd.read_csv('https://assets.datacamp.com/course/intermediate_python/gapminder.csv', index_col = 0)
life_exp = list(df.life_exp)
life_exp1950 = [28.8,55.23,43.08,30.02,62.48,69.12,66.8,50.94,37.48,68.0,38.22,40.41,53.82,47.62,50.92,59.6,31.98,39.03,39.42,38.52,68.75,35.46,38.09,54.74,44.0,50.64,40.72,39.14,42.11,57.21,40.48,61.21,59.42,66.87,70.78,34.81,45.93,48.36,41.89,45.26,34.48,35.93,34.08,66.55,67.41,37.0,30.0,67.5,43.15,65.86,42.02,33.61,32.5,37.58,41.91,60.96,64.03,72.49,37.37,37.47,44.87,45.32,66.91,65.39,65.94,58.53,63.03,43.16,42.27,50.06,47.45,55.56,55.93,42.14,38.48,42.72,36.68,36.26,48.46,33.68,40.54,50.99,50.79,42.24,59.16,42.87,31.29,36.32,41.72,36.16,72.13,69.39,42.31,37.44,36.32,72.67,37.58,43.44,55.19,62.65,43.9,47.75,61.31,59.82,64.28,52.72,61.05,40.0,46.47,39.88,37.28,58.0,30.33,60.4,64.36,65.57,32.98,45.01,64.94,57.59,38.64,41.41,71.86,69.62,45.88,58.5,41.22,50.85,38.6,59.1,44.6,43.58,39.98,69.18,68.44,66.07,55.09,40.41,43.16,32.55,42.04,48.45]
```



##  Instructions 

- Build a histogram of `life_exp` with `15` bins.
- Build a histogram of `life_exp1950`, also with `15` bins. Is there a big difference with the histogram for the 2007 data?



```
# Histogram of life_exp, 15 bins


# Show and clear plot
plt.show()
plt.clf()

# Histogram of life_exp1950, 15 bins


# Show and clear plot again
plt.show()
plt.clf()
```

##  Hints 

- `plt.hist(life_exp)` is not enough: you'll also need to specify the `bins` argument!
- The code to build the histogram for the 1950 data is the same as for the 2007 data, except for the name of the list you want to plot the data for.



##  Solution 

```
# Histogram of life_exp, 15 bins
plt.hist(life_exp, bins = 15)

# Show and clear plot
plt.show()
plt.clf()

# Histogram of life_exp1950, 15 bins
plt.hist(life_exp1950, bins = 15)

# Show and clear plot again
plt.show()
plt.clf()
```


