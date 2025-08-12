
#  Dictionary Manipulation (1)

```
Exercise ID 15611
```

##  Assignment 

If you know how to access a dictionary, you can also assign a new value to it. To add a new key-value pair to `europe` you can use something like this:

```
europe['iceland'] = 'reykjavik'

```

##  Instructions 

- Add the key `'italy'` with the value `'rome'` to `europe`.
- To assert that `'italy'` is now a key in `europe`, print out `'italy' in europe`.
- Add another key:value pair to `europe`: `'poland'` is the key, `'warsaw'` is the corresponding value.
- Print out `europe`.



```
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin', 'norway':'oslo' }

# Add italy to europe


# Print out italy in europe


# Add poland to europe


# Print europe

```

##  Hints 

- Use `europe['italy'] = ...`. Fill in the dots!
- Use `print('italy' in europe)` to see if `'italy'` is a key in `europe`.
- Use `europe['poland'] = ...`. Fill in the dots.



##  Solution 

```
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin', 'norway':'oslo' }

# Add italy to europe
europe['italy'] = 'rome'

# Print out italy in europe
print('italy' in europe)

# Add poland to europe
europe['poland'] = 'warsaw'

# Print europe
print(europe)
```


