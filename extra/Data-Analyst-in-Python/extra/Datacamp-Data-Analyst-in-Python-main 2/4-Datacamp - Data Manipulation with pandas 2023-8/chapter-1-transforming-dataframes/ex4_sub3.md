
#  None

```
Exercise ID 1095619
```

##  Assignment 

##  Instructions 

- Create a DataFrame called `ind_state` that contains the `individuals` and `state` columns of `homelessness`, in that order.
- Print the head of the result.



```
# Select only the individuals and state columns, in that order
ind_state = ____

# Print the head of the result
____
```

##  Hints 

Columns will be ordered in the order you write them inside double square brackets.



##  Solution 

```
# Select only the individuals and state columns, in that order
ind_state = homelessness[["individuals", "state"]]

# Print the head of the result
print(ind_state.head())
```


