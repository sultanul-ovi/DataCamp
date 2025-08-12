
#  Add else

```
Exercise ID 15665
```

##  Assignment 

In the script, the `if` construct for `room` has been extended with an `else` statement so that "looking around elsewhere." is printed if the condition `room == "kit"` evaluates to `False`.

Can you do a similar thing to add more functionality to the `if` construct for `area`?

##  Instructions 

Add an `else` statement to the second control structure so that "pretty small." is printed out if `area &gt; 15` evaluates to `False`.



```
# Define variables
room = "kit"
area = 14.0

# if-else construct for room
if room == "kit" :
    print("looking around in the kitchen.")
else :
    print("looking around elsewhere.")

# if-else construct for area
if area > 15 :
    print("big place!")
```

##  Hints 

- Use the same syntax as in the first `if`-`else` construct; don't forget the colon! 
- The code corresponding to the `else` statement should be `print("pretty small.")`. 
- Pay attention to punctuation marks and capitalization.



##  Solution 

```
# Define variables
room = "kit"
area = 14.0

# if-else construct for room
if room == "kit" :
    print("looking around in the kitchen.")
else :
    print("looking around elsewhere.")

# if-else construct for area :
if area > 15 :
    print("big place!")
else :
    print("pretty small.")
```


