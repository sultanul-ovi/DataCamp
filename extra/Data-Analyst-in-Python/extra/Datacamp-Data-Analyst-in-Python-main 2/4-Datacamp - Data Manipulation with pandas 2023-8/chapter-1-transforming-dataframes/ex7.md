
#  Adding new columns

```
Exercise ID 1095628
```

##  Assignment 

You aren't stuck with just the data you are given. Instead, you can add new columns to a DataFrame. This has many names, such as **transforming**, **mutating**, and **feature engineering**.

You can create new columns from scratch, but it is also common to derive them from other columns, for example, by adding columns together or by changing their units. 

`homelessness` is available and `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
homelessness = pd.read_pickle("/usr/local/share/datasets/homeless_data.pkl")
```



##  Instructions 

- Add a new column to `homelessness`, named `total`, containing the sum of the `individuals` and `family_members` columns.
- Add another column to `homelessness`, named `p_individuals`, containing the proportion of homeless people in each state who are individuals.



```
# Add total col as sum of individuals and family_members
____

# Add p_individuals col as proportion of total that are individuals
____

# See the result
print(homelessness)
```

##  Hints 

- The first part of the solution takes the form `df["new_col"] = df["col_a"] + df["col_b"]`.
- To get the proportion of homeless who are individuals, divide the `individuals` column by the `total` column.



##  Solution 

```
# Add total col as sum of individuals and family_members
homelessness["total"] = homelessness["individuals"] + homelessness["family_members"]

# Add p_individuals col as proportion of total that are individuals
homelessness["p_individuals"] = homelessness["individuals"] / homelessness["total"]

# See the result
print(homelessness)
```


