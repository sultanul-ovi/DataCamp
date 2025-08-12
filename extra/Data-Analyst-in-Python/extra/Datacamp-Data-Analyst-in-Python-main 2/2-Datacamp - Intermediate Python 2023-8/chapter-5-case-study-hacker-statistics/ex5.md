
#  How low can you go?

```
Exercise ID 15690
```

##  Assignment 

Things are shaping up nicely! You already have code that calculates your location in the Empire State Building after 100 dice throws. However, there's something we haven't thought about - you can't go below 0!

A typical way to solve problems like this is by using [`max()`](https://docs.python.org/3/library/functions.html#max). If you pass [`max()`](https://docs.python.org/3/library/functions.html#max) two arguments, the biggest one gets returned. For example, to make sure that a variable `x` never goes below `10` when you decrease it, you can use:

```
x = max(10, x - 1)

```

##  Pre exercise code 

```
import numpy as np
np.random.seed(123)
```



##  Instructions 

- Use [`max()`](https://docs.python.org/3/library/functions.html#max) in a similar way to make sure that `step` doesn't go below zero if `dice &lt;= 2`.
- Hit **Submit Answer** and check the contents of `random_walk`.



```
# NumPy is imported, seed is set

# Initialize random_walk
random_walk = [0]

for x in range(100) :
    step = random_walk[-1]
    dice = np.random.randint(1,7)

    if dice <= 2:
        # Replace below: use max to make sure step can't go below 0
        step = step - 1
    elif dice <= 5:
        step = step + 1
    else:
        step = step + np.random.randint(1,7)

    random_walk.append(step)

print(random_walk)
```

##  Hints 

- Use `max(0, step - 1)` instead of `step - 1` and assign the result to `step`.



##  Solution 

```
# NumPy is imported, seed is set

# Initialize random_walk
random_walk = [0]

for x in range(100) :
    step = random_walk[-1]
    dice = np.random.randint(1,7)

    if dice <= 2:
        # Replace below: use max to make sure step can't go below 0
        step = max(0, step - 1)
    elif dice <= 5:
        step = step + 1
    else:
        step = step + np.random.randint(1,7)

    random_walk.append(step)

print(random_walk)
```


