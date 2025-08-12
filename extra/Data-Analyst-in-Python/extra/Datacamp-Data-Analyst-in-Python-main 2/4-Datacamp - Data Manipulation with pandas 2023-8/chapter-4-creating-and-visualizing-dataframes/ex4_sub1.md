
#  None

```
Exercise ID 1095674
```

##  Assignment 

##  Instructions 

- Subset `avocados` for the conventional type, and the average price column. Create a histogram.
- Create a histogram of `avg_price` for organic type avocados.
- Add a legend to your plot, with the names "conventional" and "organic".
- Show your plot.



```
# Histogram of conventional avg_price 
avocados[____][____].____

# Histogram of organic avg_price
avocados[____][____].____

# Add a legend
plt.legend(____)

# Show the plot
____
```

##  Hints 

- Subset rows using `avocados["type"] == "conventional"`.
- Remember to select the `avg_price` column after subsetting and before plotting.
- Call `.hist()` to draw a histogram.
- Your plot won't appear until you display it using a function from `plt`.



##  Solution 

```
# Histogram of conventional avg_price 
avocados[avocados["type"] == "conventional"]["avg_price"].hist()

# Histogram of organic avg_price
avocados[avocados["type"] == "organic"]["avg_price"].hist()

# Add a legend
plt.legend(["conventional", "organic"])

# Show the plot
plt.show()
```


