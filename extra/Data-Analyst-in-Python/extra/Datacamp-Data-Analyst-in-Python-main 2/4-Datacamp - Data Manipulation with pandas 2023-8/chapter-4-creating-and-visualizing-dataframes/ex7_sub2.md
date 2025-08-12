
#  None

```
Exercise ID 1095682
```

##  Assignment 

##  Instructions 

- Replace the missing values of `avocados_2016` with `0`s and store the result as `avocados_filled`.
- Create a histogram of the `cols_with_missing` columns of `avocados_filled`.



```
# From previous step
cols_with_missing = ["small_sold", "large_sold", "xl_sold"]
avocados_2016[cols_with_missing].hist()
plt.show()

# Fill in missing values with 0
avocados_filled = ____

# Create histograms of the filled columns
____

# Show the plot
plt.show()
```

##  Hints 

- Remember the method to **fill** missing values?
- The code to create the histogram will be very similar to the code used to create your first set of histograms.



##  Solution 

```
# From previous step
cols_with_missing = ["small_sold", "large_sold", "xl_sold"]
avocados_2016[cols_with_missing].hist()
plt.show()

# Fill in missing values with 0
avocados_filled = avocados_2016.fillna(0)

# Create histograms of the filled columns
avocados_filled[cols_with_missing].hist()

# Show the plot
plt.show()
```


