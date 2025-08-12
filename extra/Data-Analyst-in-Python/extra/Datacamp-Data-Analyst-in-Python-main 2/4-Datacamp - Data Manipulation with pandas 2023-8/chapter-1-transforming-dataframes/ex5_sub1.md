
#  None

```
Exercise ID 1095621
```

##  Assignment 

##  Instructions 

Filter `homelessness` for cases where the number of individuals is greater than ten thousand, assigning to `ind_gt_10k`. **View the printed result.**



```
# Filter for rows where individuals is greater than 10000
ind_gt_10k = ____

# See the result
print(ind_gt_10k)
```

##  Hints 

The answer takes the form `df[df["col"] &gt; n]`, where `df` is the DataFrame, `col` is the column name, and `n` is the cutoff point.



##  Solution 

```
# Filter for rows where individuals is greater than 10000
ind_gt_10k = homelessness[homelessness["individuals"] > 10000]

# See the result
print(ind_gt_10k)
```


