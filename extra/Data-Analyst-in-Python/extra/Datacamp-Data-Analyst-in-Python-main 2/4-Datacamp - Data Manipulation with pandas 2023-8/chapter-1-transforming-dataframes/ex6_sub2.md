
#  None

```
Exercise ID 1095626
```

##  Assignment 

##  Instructions 

Filter `homelessness` for cases where the USA census `state` is in the list of Mojave states, `canu`, assigning to `mojave_homelessness`. **View the printed result.**



```
# The Mojave Desert states
canu = ["California", "Arizona", "Nevada", "Utah"]

# Filter for rows in the Mojave Desert states
mojave_homelessness = ____

# See the result
print(mojave_homelessness)
```

##  Hints 

The solution takes the form `df[df["col"].isin(["value_1", "value_2"])]`.



##  Solution 

```
# The Mojave Desert states
canu = ["California", "Arizona", "Nevada", "Utah"]

# Filter for rows in the Mojave Desert states
mojave_homelessness = homelessness[homelessness["state"].isin(canu)]

# See the result
print(mojave_homelessness)
```


