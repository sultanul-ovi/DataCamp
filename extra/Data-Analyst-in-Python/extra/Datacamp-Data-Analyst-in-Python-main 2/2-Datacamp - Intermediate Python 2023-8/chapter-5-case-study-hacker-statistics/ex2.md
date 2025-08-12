
#  Roll the dice

```
Exercise ID 15687
```

##  Assignment 

In the previous exercise, you used [`rand()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.rand.html), that generates a random float between 0 and 1.

As Hugo explained in the video you can just as well use [`randint()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.randint.html), also a function of the `random` package, to generate integers randomly. The following call generates the integer 4, 5, 6 or 7 randomly. **8 is not included**.

```
import numpy as np
np.random.randint(4, 8)

```

NumPy has already been imported as `np` and a seed has been set. Can you roll some dice?

##  Instructions 

- Use [`randint()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.randint.html) with the appropriate arguments to randomly generate the integer 1, 2, 3, 4, 5 or 6. This simulates a dice. Print it out.
- Repeat the outcome to see if the second throw is different. Again, print out the result.



```
# Import numpy and set seed
import numpy as np
np.random.seed(123)

# Use randint() to simulate a dice


# Use randint() again

```

##  Hints 

- Use `np.random.randint(1,7)` inside a [`print()`](https://docs.python.org/3/library/functions.html#print) call twice.



##  Solution 

```
# Import numpy and set seed
import numpy as np
np.random.seed(123)

# Use randint() to simulate a dice
print(np.random.randint(1,7))

# Use randint() again
print(np.random.randint(1,7))
```


