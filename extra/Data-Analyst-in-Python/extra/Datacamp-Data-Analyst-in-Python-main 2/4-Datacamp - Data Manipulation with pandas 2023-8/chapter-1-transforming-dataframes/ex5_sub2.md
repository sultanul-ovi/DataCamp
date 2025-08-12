
#  None

```
Exercise ID 1095622
```

##  Assignment 

##  Instructions 

Filter `homelessness` for cases where the USA Census region is `"Mountain"`, assigning to `mountain_reg`. **View the printed result.**



```
# Filter for rows where region is Mountain
mountain_reg = ____

# See the result
____
```

##  Hints 

The answer takes the form `df[df["col"] == "value"]`, where `df` is the DataFrame, `col` is the column name, and `value` is the region to match against.



##  Solution 

```
# Filter for rows where region is Mountain
mountain_reg = homelessness[homelessness["region"] == "Mountain"]

# See the result
print(mountain_reg)
```


