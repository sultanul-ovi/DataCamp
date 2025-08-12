
#  Slicing in both directions

```
Exercise ID 1095662
```

##  Assignment 

You've seen slicing DataFrames by rows and by columns, but since DataFrames are two-dimensional objects, it is often natural to slice both dimensions at once. That is, by passing two arguments to `.loc[]`, you can subset by rows and columns in one go.

`pandas` is loaded as `pd`. `temperatures_srt` is indexed by country and city, has a sorted index, and is available.

##  Pre exercise code 

```
import pandas as pd
temperatures = pd.read_pickle("/usr/local/share/datasets/temperatures_no_unc.pkl")

temperatures_ind = temperatures.set_index(["country", "city"])
temperatures_srt = temperatures_ind.sort_index()
```



##  Instructions 

- Use `.loc[]` slicing to subset rows from India, Hyderabad to Iraq, Baghdad.
- Use `.loc[]` slicing to subset columns from `date` to `avg_temp_c`.
- Slice in both directions at once from Hyderabad to Baghdad, and `date` to `avg_temp_c`.



```
# Subset rows from India, Hyderabad to Iraq, Baghdad
print(____)

# Subset columns from date to avg_temp_c
print(____)

# Subset in both directions at once
print(____)
```

##  Hints 

- Slice rows with code like `df.loc[("a", "b"):("c", "d")]`.
- Slice columns with code like `df.loc[:, "e":"f"]`.
- Slice both ways with code like `df.loc[("a", "b"):("c", "d"), "e":"f"]`.



##  Solution 

```
# Subset rows from India, Hyderabad to Iraq, Baghdad
print(temperatures_srt.loc[("India", "Hyderabad"):("Iraq", "Baghdad")])

# Subset columns from date to avg_temp_c
print(temperatures_srt.loc[:, "date":"avg_temp_c"])

# Subset in both directions at once
print(temperatures_srt.loc[("India", "Hyderabad"):("Iraq", "Baghdad"), "date":"avg_temp_c"])
```


