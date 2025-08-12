
#  None

```
Exercise ID 1095681
```

##  Assignment 

##  Instructions 

- A list has been created, `cols_with_missing`, containing the names of columns with missing values: `"small_sold"`, `"large_sold"`, and `"xl_sold"`.
- Create a histogram of those columns.
- Show the plot.



```
# List the columns with missing values
cols_with_missing = ["small_sold", "large_sold", "xl_sold"]

# Create histograms showing the distributions cols_with_missing
avocados_2016[____].____

# Show the plot
____
```

##  Hints 

- Call `.hist()` on a DataFrame to create a histogram.
- To plot distributions of multiple columns, call `.hist()` on a subset of columns (`df['col_a', 'col_b'].hist()`).



##  Solution 

```
# List the columns with missing values
cols_with_missing = ["small_sold", "large_sold", "xl_sold"]

# Create histograms showing the distributions cols_with_missing
avocados_2016[cols_with_missing].hist()

# Show the plot
plt.show()
```


