
#  Motivation for dictionaries

```
Exercise ID 15607
```

##  Assignment 

To see why dictionaries are useful, have a look at the two lists defined in the script. `countries` contains the names of some European countries. `capitals` lists the corresponding names of their capital.

##  Instructions 

- Use the [`index()`](https://docs.python.org/3/library/stdtypes.html#common-sequence-operations) method on `countries` to find the index of `'germany'`. Store this index as `ind_ger`.
- Use `ind_ger` to access the capital of Germany from the `capitals` list. Print it out.



```
# Definition of countries and capital
countries = ['spain', 'france', 'germany', 'norway']
capitals = ['madrid', 'paris', 'berlin', 'oslo']

# Get index of 'germany': ind_ger


# Use ind_ger to print out capital of Germany

```

##  Hints 

- Use `countries.index('germany')` to get the index of the string `'germany'` in the list `countries`.
- You can use `capitals[...]` to select an element from `capitals`. In this case use `ind_ger` on the dots.



##  Solution 

```
# Definition of countries and capital
countries = ['spain', 'france', 'germany', 'norway']
capitals = ['madrid', 'paris', 'berlin', 'oslo']

# Get index of 'germany': ind_ger
ind_ger = countries.index('germany')

# Use ind_ger to print out capital of Germany
print(capitals[ind_ger])
```


