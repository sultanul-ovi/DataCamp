
#  Indexes and values (1)

```
Exercise ID 15677
```

##  Assignment 

Using a `for` loop to iterate over a list only gives you access to every list element in each run, one after the other. If you also want to access the index information, so where the list element you're iterating over is located, you can use [`enumerate()`](https://docs.python.org/3/library/functions.html#enumerate).

As an example, have a look at how the `for` loop from the video was converted:

```
fam = [1.73, 1.68, 1.71, 1.89]
for index, height in enumerate(fam) :
    print("person " + str(index) + ": " + str(height))

```

##  Instructions 

- Adapt the `for` loop in the sample code to use [`enumerate()`](https://docs.python.org/3/library/functions.html#enumerate) and use two iterator variables.
- Update the `print()` statement so that on each run, a line of the form `"room x: y"` should be printed, where x is the index of the list element and y is the actual list element, i.e. the area. Make sure to print out this exact string, with the correct spacing.



```
# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Change for loop to use enumerate() and update print()
for a in areas :
    print(a)
```

##  Hints 

Copy and paste the example code and change some variables and strings. You'll also have to adapt the [`print()`](https://docs.python.org/3/library/functions.html#print) statement. Pay attention to the correct spacing and capitalization!



##  Solution 

```
# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Change for loop to use enumerate() and update print()
for index, area in enumerate(areas) :
    print("room " + str(index) + ": " + str(area))
```


