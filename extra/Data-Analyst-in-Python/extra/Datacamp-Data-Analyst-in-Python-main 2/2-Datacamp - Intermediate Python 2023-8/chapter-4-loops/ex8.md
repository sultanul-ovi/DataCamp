
#  Loop over dictionary

```
Exercise ID 15680
```

##  Assignment 

In Python 3, you need the [`items()`](https://docs.python.org/3/library/stdtypes.html#dict.items) method to loop over a dictionary:

```
world = { "afghanistan":30.55, 
          "albania":2.77,
          "algeria":39.21 }

for key, value in world.items() :
    print(key + " -- " + str(value))

```

Remember the `europe` dictionary that contained the names of some European countries as key and their capitals as corresponding value? Go ahead and write a loop to iterate over it!

##  Instructions 

Write a `for` loop that goes through each key:value pair of `europe`. On each iteration, `"the capital of x is y"` should be printed out, where x is the key and y is the value of the pair.



```
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin',
          'norway':'oslo', 'italy':'rome', 'poland':'warsaw', 'austria':'vienna' }
          
# Iterate over europe

```

##  Hints 

- Start from the example code and change some variable names: it's `europe` instead of `world` now.
- If the key is set to `key` and the value to `value` in each iteration, you'll need the following [`print()`](https://docs.python.org/3/library/functions.html#print) call:

```
print("the capital of " + str(key) + " is " + str(value))

```



##  Solution 

```
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin',
          'norway':'oslo', 'italy':'rome', 'poland':'warsaw', 'austria':'vienna' }
          
# Iterate over europe
for key, value in europe.items() :
     print("the capital of " + str(key) + " is " + str(value))
```


