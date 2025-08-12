
#  None

```
Exercise ID 1095618
```

##  Assignment 

##  Instructions 

- Create a DataFrame called `state_fam` that contains only the `state` and `family_members` columns of `homelessness`, in that order.
- Print the head of the result.



```
# Select the state and family_members columns
state_fam = ____

# Print the head of the result
____
```

##  Hints 

Use double square-brackets with column names in quotes to select multiple columns.



##  Solution 

```
# Select the state and family_members columns
state_fam = homelessness[["state", "family_members"]]

# Print the head of the result
print(state_fam.head())
```


