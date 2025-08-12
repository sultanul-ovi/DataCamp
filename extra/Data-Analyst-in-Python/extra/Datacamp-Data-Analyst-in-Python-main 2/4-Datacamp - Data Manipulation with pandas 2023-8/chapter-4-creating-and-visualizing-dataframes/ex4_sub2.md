
#  None

```
Exercise ID 1095675
```

##  Assignment 

##  Instructions 

- Modify your code to adjust the transparency of both histograms to `0.5` to see how much overlap there is between the two distributions.



```
# Modify histogram transparency to 0.5 
avocados[avocados["type"] == "conventional"]["avg_price"].hist()

# Modify histogram transparency to 0.5
avocados[avocados["type"] == "organic"]["avg_price"].hist()

# Add a legend
plt.legend(["conventional", "organic"])

# Show the plot
plt.show()
```

##  Hints 

- Use the `alpha` argument to adjust plot transparency.



##  Solution 

```
# Modify histogram transparency to 0.5
avocados[avocados["type"] == "conventional"]["avg_price"].hist(alpha=0.5)

# Modify histogram transparency to 0.5
avocados[avocados["type"] == "organic"]["avg_price"].hist(alpha=0.5)

# Add a legend
plt.legend(["conventional", "organic"])

# Show the plot
plt.show()
```


