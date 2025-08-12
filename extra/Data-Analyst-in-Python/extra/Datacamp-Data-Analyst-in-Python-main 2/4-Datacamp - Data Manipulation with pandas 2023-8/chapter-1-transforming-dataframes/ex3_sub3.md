
#  None

```
Exercise ID 1095615
```

##  Assignment 

##  Instructions 

- Sort `homelessness` first by region (ascending), and then by number of family members (descending). Save this as `homelessness_reg_fam`.
- Print the head of the sorted DataFrame.



```
# Sort homelessness by region, then descending family members
homelessness_reg_fam = ____

# Print the top few rows
____
```

##  Hints 

- Call `.sort_values()`, passing in a list of column names and setting `ascending` to a list of Booleans.
- Call `.head()` to get the top few rows.



##  Solution 

```
# Sort homelessness by region, then descending family members
homelessness_reg_fam = homelessness.sort_values(["region", "family_members"], ascending=[True, False])

# Print the top few rows
print(homelessness_reg_fam.head())
```


