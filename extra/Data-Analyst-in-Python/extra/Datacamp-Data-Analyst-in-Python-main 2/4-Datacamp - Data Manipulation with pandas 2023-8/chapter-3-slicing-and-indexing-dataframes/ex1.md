
#  Setting and removing indexes

```
Exercise ID 1095656
```

##  Assignment 

pandas allows you to designate columns as an **index**. This enables cleaner code when taking subsets (as well as providing more efficient lookup under some circumstances).

In this chapter, you'll be exploring `temperatures`, a DataFrame of average temperatures in cities around the world. `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
temperatures = pd.read_pickle("/usr/local/share/datasets/temperatures_no_unc.pkl")
```



##  Instructions 

- **Look at `temperatures`**.
- Set the index of `temperatures` to `"city"`, assigning to `temperatures_ind`.
- **Look at `temperatures_ind`. How is it different from `temperatures`?**
- Reset the index of `temperatures_ind`, keeping its contents.
- Reset the index of `temperatures_ind`, dropping its contents.



```
# Look at temperatures
print(____)

# Set the index of temperatures to city
temperatures_ind = ____

# Look at temperatures_ind
print(____)

# Reset the temperatures_ind index, keeping its contents
print(____)

# Reset the temperatures_ind index, dropping its contents
print(____)
```

##  Hints 

- Call `.set_index()`, passing in the name of the column.
- Call `.reset_index()` without arguments, then setting `drop` to `True`.



##  Solution 

```
# Look at temperatures
print(temperatures)

# Set the index of temperatures to city
temperatures_ind = temperatures.set_index("city")

# Look at temperatures_ind
print(temperatures_ind)

# Reset the temperatures_ind index, keeping its contents
print(temperatures_ind.reset_index())

# Reset the temperatures_ind index, dropping its contents
print(temperatures_ind.reset_index(drop=True))
```


