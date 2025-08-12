
#  Boolean operators with NumPy

```
Exercise ID 15662
```

##  Assignment 

Before, the operational operators like `&lt;` and `&gt;=` worked with NumPy arrays out of the box. Unfortunately, this is not true for the boolean operators `and`, `or`, and `not`.

To use these operators with NumPy, you will need [`np.logical_and()`](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_and.html), [`np.logical_or()`](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_or.html) and [`np.logical_not()`](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.logical_not.html). Here's an example on the `my_house` and `your_house` arrays from before to give you an idea:

```
np.logical_and(my_house &gt; 13, 
               your_house &lt; 15)

```

##  Pre exercise code 

```
import numpy as np
my_house = np.array([18.0, 20.0, 10.75, 9.50])
your_house = np.array([14.0, 24.0, 14.25, 9.0])
```



##  Instructions 

- Generate boolean arrays that answer the following questions:
- Which areas in `my_house` are greater than `18.5` or smaller than `10`?
- Which areas are smaller than `11` in both `my_house` and `your_house`? Make sure to wrap both commands in [`print()`](https://docs.python.org/3/library/functions.html#print) statement, so that you can inspect the output.



```
# Create arrays
import numpy as np
my_house = np.array([18.0, 20.0, 10.75, 9.50])
your_house = np.array([14.0, 24.0, 14.25, 9.0])

# my_house greater than 18.5 or smaller than 10


# Both my_house and your_house smaller than 11

```

##  Hints 

- Use `np.logical_or(my_house &gt; 18.5, ...)`. Fill in the dots. Don't forget to wrap your code in a [`print()`](https://docs.python.org/3/library/functions.html#print) call so you can inspect the output.
- Use `np.logical_and(my_house &lt; 11, ...)`. Fill in the dots.



##  Solution 

```
# Create arrays
import numpy as np
my_house = np.array([18.0, 20.0, 10.75, 9.50])
your_house = np.array([14.0, 24.0, 14.25, 9.0])

# my_house greater than 18.5 or smaller than 10
print(np.logical_or(my_house > 18.5, my_house < 10))

# Both my_house and your_house smaller than 11
print(np.logical_and(my_house < 11, your_house < 11))
```


