
#  Access dictionary

```
Exercise ID 15609
```

##  Assignment 

If the keys of a dictionary are chosen wisely, accessing the values in a dictionary is easy and intuitive. For example, to get the capital for France from `europe` you can use:

```
europe['france']

```

Here, `'france'` is the key and `'paris'` the value is returned.

##  Instructions 

- Check out which keys are in `europe` by calling the [`keys()`](https://docs.python.org/3/library/stdtypes.html#dict.keys) method on `europe`. Print out the result.
- Print out the value that belongs to the key `'norway'`.



```
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin', 'norway':'oslo' }

# Print out the keys in europe


# Print out value that belongs to key 'norway'

```

##  Hints 

- `europe.keys()` gives you the keys in `europe`. Make sure to wrap a [`print()`](https://docs.python.org/3/library/functions.html#print) call around it.
- To access the name of country use syntax similar to `country['capital']`.



##  Solution 

```
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin', 'norway':'oslo' }

# Print out the keys in europe
print(europe.keys())

# Print out value that belongs to key 'norway'
print(europe['norway'])
```


