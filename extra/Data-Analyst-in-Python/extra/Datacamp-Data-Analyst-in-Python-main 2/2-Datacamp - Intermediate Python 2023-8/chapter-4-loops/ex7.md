
#  Loop over list of lists

```
Exercise ID 15679
```

##  Assignment 

Remember the `house` variable from the Intro to Python course? Have a look at its definition in the script. It's basically a list of lists, where each sublist contains the name and area of a room in your house.

It's up to you to build a `for` loop from scratch this time!

##  Instructions 

Write a `for` loop that goes through each sublist of `house` and prints out `the x is y sqm`, where x is the name of the room and y is the area of the room.



```
# house list of lists
house = [["hallway", 11.25], 
         ["kitchen", 18.0], 
         ["living room", 20.0], 
         ["bedroom", 10.75], 
         ["bathroom", 9.50]]
         
# Build a for loop from scratch
```

##  Hints 

If your `for` loop is defined as:

```
for x in house :
    ...

```

You can use `x[0]` to access the name of the room and `x[1]` to access the corresponding area. The [`print()`](https://docs.python.org/3/library/functions.html#print) call should then be:

```
print("the " + x[0] + " is " + str(x[1]) + " sqm")

```



##  Solution 

```
# house list of lists
house = [["hallway", 11.25], 
         ["kitchen", 18.0], 
         ["living room", 20.0], 
         ["bedroom", 10.75], 
         ["bathroom", 9.50]]
         
# Build a for loop from scratch
for x in house :
    print("the " + x[0] + " is " + str(x[1]) + " sqm")
```


