
#  Dictionariception

```
Exercise ID 14758
```

##  Assignment 

Remember lists? They could contain anything, even other lists. Well, for dictionaries the same holds. Dictionaries can contain key:value pairs where the values are again dictionaries.

As an example, have a look at the script where another version of `europe` - the dictionary you've been working with all along - is coded. The keys are still the country names, but the values are dictionaries that contain more information than just the capital.

It's perfectly possible to chain square brackets to select elements. To fetch the population for Spain from `europe`, for example, you need:

```
europe['spain']['population']

```

##  Instructions 

- Use chained square brackets to select and print out the capital of France.
- Create a dictionary, named `data`, with the keys `'capital'` and `'population'`. Set them to `'rome'` and `59.83`, respectively.
- Add a new key-value pair to `europe`; the key is `'italy'` and the value is `data`, the dictionary you just built.



```
# Dictionary of dictionaries
europe = { 'spain': { 'capital':'madrid', 'population':46.77 },
           'france': { 'capital':'paris', 'population':66.03 },
           'germany': { 'capital':'berlin', 'population':80.62 },
           'norway': { 'capital':'oslo', 'population':5.084 } }


# Print out the capital of France


# Create sub-dictionary data


# Add data to europe under key 'italy'


# Print europe

```

##  Hints 

- To select the population of France, you need `europe['france']['population']`; can you change this to select the capital instead? Also, don't forget to wrap a [`print()`](https://docs.python.org/3/library/functions.html#print) statement around this call, to print out the result.
- `data = {'capital':'rome', ... }`. Can you finish it?
- To add a key:value pair to `europe` use this syntax: `europe[key] = value`. `key` is a string in your case, `value` is a dictionary.
- Print out `europe`.



##  Solution 

```
# Dictionary of dictionaries
europe = { 'spain': { 'capital':'madrid', 'population':46.77 },
           'france': { 'capital':'paris', 'population':66.03 },
           'germany': { 'capital':'berlin', 'population':80.62 },
           'norway': { 'capital':'oslo', 'population':5.084 } }


# Print out the capital of France
print(europe['france']['capital'])

# Create sub-dictionary data
data = { 'capital':'rome', 'population':59.83 }

# Add data to europe under key 'italy'
europe['italy'] = data

# Print europe
print(europe)
```


