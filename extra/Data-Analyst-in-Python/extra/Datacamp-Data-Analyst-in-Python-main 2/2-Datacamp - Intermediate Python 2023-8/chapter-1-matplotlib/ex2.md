
#  Line Plot (2): Interpretation

```
Exercise ID 15597
```

##  Assignment 

Have another look at the plot you created in the previous exercise; it's shown on the right. Based on the plot, in **approximately** what year will there be more than ten billion human beings on this planet?

##  Pre exercise code 

```
import matplotlib.pyplot as plt; import importlib; importlib.reload(plt)
plt.clf()
year = list(range(1950, 2101))
pop = [2.53,2.57,2.62,2.67,2.71,2.76,2.81,2.86,2.92,2.97,3.03,3.08,3.14,3.2,3.26,3.33,3.4,3.47,3.54,3.62,3.69,3.77,3.84,3.92,4.,4.07,4.15,4.22,4.3,4.37,4.45,4.53,4.61,4.69,4.78,4.86,4.95,5.05,5.14,5.23,5.32,5.41,5.49,5.58,5.66,5.74,5.82,5.9,5.98,6.05,6.13,6.2,6.28,6.36,6.44,6.51,6.59,6.67,6.75,6.83,6.92,7.,7.08,7.16,7.24,7.32,7.4,7.48,7.56,7.64,7.72,7.79,7.87,7.94,8.01,8.08,8.15,8.22,8.29,8.36,8.42,8.49,8.56,8.62,8.68,8.74,8.8,8.86,8.92,8.98,9.04,9.09,9.15,9.2,9.26,9.31,9.36,9.41,9.46,9.5,9.55,9.6,9.64,9.68,9.73,9.77,9.81,9.85,9.88,9.92,9.96,9.99,10.03,10.06,10.09,10.13,10.16,10.19,10.22,10.25,10.28,10.31,10.33,10.36,10.38,10.41,10.43,10.46,10.48,10.5,10.52,10.55,10.57,10.59,10.61,10.63,10.65,10.66,10.68,10.7,10.72,10.73,10.75,10.77,10.78,10.79,10.81,10.82,10.83,10.84,10.85]
plt.plot(year,pop)
plt.show()
```



##  Answers 
1. 2040
1. 2060
1. 2085
1. 2095


##  Hints 

You can check the population for a particular year by checking out the plot. If you want the exact result, use `pop[year.index(2030)]`, to get the population for 2030, for example.



##  Solution 

No solution was found.


