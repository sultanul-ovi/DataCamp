
#  None

```
Exercise ID 1095623
```

##  Assignment 

##  Instructions 

Filter `homelessness` for cases where the number of `family_members` is less than one thousand and the `region` is "Pacific", assigning to `fam_lt_1k_pac`. **View the printed result.**



```
# Filter for rows where family_members is less than 1000 
# and region is Pacific
fam_lt_1k_pac = ____

# See the result
print(fam_lt_1k_pac)
```

##  Hints 

The answer takes the form `df[(df["col_a"] &lt; n) &amp; (df["col_b"] == "value")]`, where `df` is the DataFrame, `col_a` and `col_b` are the column names, `n` is the cutoff point, and `value` is the region to match against.



##  Solution 

```
# Filter for rows where family_members is less than 1000 
# and region is Pacific
fam_lt_1k_pac = homelessness[(homelessness["family_members"] < 1000) & (homelessness["region"] == "Pacific")]

# See the result
print(fam_lt_1k_pac)
```


