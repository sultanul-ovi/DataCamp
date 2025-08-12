
#  Combo-attack!

```
Exercise ID 1095629
```

##  Assignment 

You've seen the four most common types of data manipulation: sorting rows, subsetting columns, subsetting rows, and adding new columns. In a real-life data analysis, you can mix and match these four manipulations to answer a multitude of questions.

In this exercise, you'll answer the question, "Which state has the highest number of homeless individuals per 10,000 people in the state?" Combine your new `pandas` skills to find out.

##  Pre exercise code 

```
import pandas as pd
homelessness = pd.read_pickle("/usr/local/share/datasets/homeless_data.pkl")
```



##  Instructions 

- Add a column to `homelessness`, `indiv_per_10k`, containing the number of homeless individuals per ten thousand people in each state.
- Subset rows where `indiv_per_10k` is higher than `20`, assigning to `high_homelessness`.
- Sort `high_homelessness` by descending `indiv_per_10k`, assigning to `high_homelessness_srt`.
- Select only the `state` and `indiv_per_10k` columns of `high_homelessness_srt` and save as `result`. **Look at the `result`.**



```
# Create indiv_per_10k col as homeless individuals per 10k state pop
homelessness["indiv_per_10k"] = 10000 * ____ / ____ 

# Subset rows for indiv_per_10k greater than 20
high_homelessness = ____

# Sort high_homelessness by descending indiv_per_10k
high_homelessness_srt = ____

# From high_homelessness_srt, select the state and indiv_per_10k cols
result = ____

# See the result
print(result)
```

##  Hints 

- To add a column, use syntax like `df["new_col"] = df["col_a"] / df["col_b"]`.
- To filter rows, use syntax like `df[df["col"] &gt; n]`.
- To sort rows, use syntax like `df.sort_values("col", ascending=False)`.
- To select columns, use syntax like `df[["col_a", "col_b"]]`.



##  Solution 

```
# Create indiv_per_10k col as homeless individuals per 10k state pop
homelessness["indiv_per_10k"] = 10000 * homelessness["individuals"] / homelessness["state_pop"] 

# Subset rows for indiv_per_10k greater than 20
high_homelessness = homelessness[homelessness["indiv_per_10k"] > 20]

# Sort high_homelessness by descending indiv_per_10k
high_homelessness_srt = high_homelessness.sort_values("indiv_per_10k", ascending=False)

# From high_homelessness_srt, select the state and indiv_per_10k cols
result = high_homelessness_srt[["state", "indiv_per_10k"]]

# See the result
print(result)
```


