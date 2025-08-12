
#  None

```
Exercise ID 1095617
```

##  Assignment 

##  Instructions 

- Create a DataFrame called `individuals` that contains only the `individuals` column of `homelessness`.
- Print the head of the result.



```
# Select the individuals column
individuals = ____

# Print the head of the result
____
```

##  Hints 

Use square-brackets with the column name in quotes to select a column.



##  Solution 

```
# Select the individuals column
individuals = homelessness["individuals"]

# Print the head of the result
print(individuals.head())
```


