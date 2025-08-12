
#  None

```
Exercise ID 1095614
```

##  Assignment 

##  Instructions 

- Sort `homelessness` by the number of homeless `family_members` in descending order, and save this as `homelessness_fam`.
- Print the head of the sorted DataFrame.



```
# Sort homelessness by descending family members
homelessness_fam = ____

# Print the top few rows
____
```

##  Hints 

- You can use the `ascending` argument of `.sort_values()` to pick the direction of sorting.



##  Solution 

```
# Sort homelessness by descending family members
homelessness_fam = homelessness.sort_values("family_members", ascending=False)

# Print the top few rows
print(homelessness_fam.head())
```


