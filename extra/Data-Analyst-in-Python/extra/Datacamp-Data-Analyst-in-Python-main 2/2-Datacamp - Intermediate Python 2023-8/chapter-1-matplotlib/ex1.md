
#  Line plot (1)

```
Exercise ID 15596
```

##  Assignment 

With matplotlib, you can create a bunch of different plots in Python. The most basic plot is the line plot. A general recipe is given here.

```
import matplotlib.pyplot as plt
plt.plot(x,y)
plt.show()

```

In the video, you already saw how much the world population has grown over the past years. Will it continue to do so? The world bank has estimates of the world population for the years 1950 up to 2100. The years are loaded in your workspace as a list called `year`, and the corresponding populations as a list called `pop`.

**This course touches on a lot of concepts you may have forgotten, so if you ever need a quick refresher, download the [Python For Data Science Cheat Sheet](https://res.cloudinary.com/dyd911kmh/image/upload/f_auto,q_auto:best/v1620781328/Python_For_Data_Science_-_A_Cheat_Sheet_For_Beginners_igzrny.png) and keep it handy!**

##  Pre exercise code 

```
import matplotlib.pyplot as plt; import importlib; importlib.reload(plt)
plt.clf()
year = list(range(1950, 2101))
pop = [2.53,2.57,2.62,2.67,2.71,2.76,2.81,2.86,2.92,2.97,3.03,3.08,3.14,3.2,3.26,3.33,3.4,3.47,3.54,3.62,3.69,3.77,3.84,3.92,4.,4.07,4.15,4.22,4.3,4.37,4.45,4.53,4.61,4.69,4.78,4.86,4.95,5.05,5.14,5.23,5.32,5.41,5.49,5.58,5.66,5.74,5.82,5.9,5.98,6.05,6.13,6.2,6.28,6.36,6.44,6.51,6.59,6.67,6.75,6.83,6.92,7.,7.08,7.16,7.24,7.32,7.4,7.48,7.56,7.64,7.72,7.79,7.87,7.94,8.01,8.08,8.15,8.22,8.29,8.36,8.42,8.49,8.56,8.62,8.68,8.74,8.8,8.86,8.92,8.98,9.04,9.09,9.15,9.2,9.26,9.31,9.36,9.41,9.46,9.5,9.55,9.6,9.64,9.68,9.73,9.77,9.81,9.85,9.88,9.92,9.96,9.99,10.03,10.06,10.09,10.13,10.16,10.19,10.22,10.25,10.28,10.31,10.33,10.36,10.38,10.41,10.43,10.46,10.48,10.5,10.52,10.55,10.57,10.59,10.61,10.63,10.65,10.66,10.68,10.7,10.72,10.73,10.75,10.77,10.78,10.79,10.81,10.82,10.83,10.84,10.85]
```



##  Instructions 

- [`print()`](https://docs.python.org/3/library/functions.html#print) the last item from both the `year` and the `pop` list to see what the predicted population for the year 2100 is. Use two `print()` functions.
- Before you can start, you should import `matplotlib.pyplot` as `plt`. `pyplot` is a sub-package of `matplotlib`, hence the dot. 
- Use [`plt.plot()`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.plot.html) to build a line plot. `year` should be mapped on the horizontal axis, `pop` on the vertical axis. Don't forget to finish off with the [`plt.show()`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.show.html) function to actually display the plot.



```
# Print the last item from year and pop



# Import matplotlib.pyplot as plt


# Make a line plot: year on the x-axis, pop on the y-axis


# Display the plot with plt.show()

```

##  Hints 

- To access the last element of a regular Python list, use `[-1]`.
- You'll need `matplotlib.pyplot` in your import call.
- Use [`plt.plot()`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.plot.html) and `plt.show()` to build the line plot.



##  Solution 

```
# Print the last item from year and pop
print(year[-1])
print(pop[-1])

# Import matplotlib.pyplot as plt
import matplotlib.pyplot as plt

# Make a line plot: year on the x-axis, pop on the y-axis
plt.plot(year, pop)

# Display the plot with plt.show()
plt.show()
```


