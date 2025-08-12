
#  Determine your next move

```
Exercise ID 15688
```

##  Assignment 

In the Empire State Building bet, your next move depends on the number you get after throwing the dice. We can perfectly code this with an `if`-`elif`-`else` construct!

The sample code assumes that you're currently at step 50. Can you fill in the missing pieces to finish the script? `numpy` is already imported as `np` and the seed has been set to `123`, so you don't have to worry about that anymore.

##  Pre exercise code 

```
import numpy as np
np.random.seed(123)
```



##  Instructions 

- Roll the dice. Use [`randint()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.randint.html) to create the variable `dice`.
- Finish the `if`-`elif`-`else` construct by replacing `___`:
- If `dice` is 1 or 2, you go one step down.
- if `dice` is 3, 4 or 5, you go one step up.
- Else, you throw the dice again. The number on the dice is the number of steps you go up.
- Print out `dice` and `step`. Given the value of `dice`, was `step` updated correctly?



```
# NumPy is imported, seed is set

# Starting step
step = 50

# Roll the dice


# Finish the control construct
if dice <= 2 :
    step = step - 1
elif ___ :
    ___
___ :
    step = step + np.random.randint(1,7)

# Print out dice and step

```

##  Hints 

- To roll the dice, you need `np.random.randint(1,7)`.
- The condition of the `elif` statement is `dice &lt;= 5`.
- To print out `dice` and `step`, simply use two [`print()`](https://docs.python.org/3/library/functions.html#print) statements.



##  Solution 

```
# NumPy is imported, seed is set

# Starting step
step = 50

# Roll the dice
dice = np.random.randint(1,7)

# Finish the control construct
if dice <= 2 :
    step = step - 1
elif dice <= 5 :
    step = step + 1
else :
    step = step + np.random.randint(1,7)

# Print out dice and step
print(dice)
print(step)
```


