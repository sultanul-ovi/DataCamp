
#  Loop over NumPy array

```
Exercise ID 15681
```

##  Assignment 

If you're dealing with a 1D NumPy array, looping over all elements can be as simple as:

```
for x in my_array :
    ...

```

If you're dealing with a 2D NumPy array, it's more complicated. A 2D array is built up of multiple 1D arrays. To explicitly iterate over all separate elements of a multi-dimensional array, you'll need this syntax:

```
for x in np.nditer(my_array) :
    ...

```

Two NumPy arrays that you might recognize from the intro course are available in your Python session: `np_height`, a NumPy array containing the heights of Major League Baseball players, and `np_baseball`, a 2D NumPy array that contains both the heights (first column) and weights (second column) of those players.

##  Pre exercise code 

```
import pandas as pd
import numpy as np
mlb = pd.read_csv("https://assets.datacamp.com/course/intro_to_python/baseball.csv")
np_height = np.array(mlb['Height'])
np_baseball = np.array(mlb[['Height', 'Weight']])
```



##  Instructions 

- Import the `numpy` package under the local alias `np`.
- Write a `for` loop that iterates over all elements in `np_height` and prints out `"x inches"` for each element, where x is the value in the array.
- Write a `for` loop that visits every element of the `np_baseball` array and prints it out.



```
# Import numpy as np


# For loop over np_height


# For loop over np_baseball

```

##  Hints 

- Inside the first `for` loop use `print(str(el) + " inches")` if `el` is an element of the NumPy array.
- In the second `for` loop, use `np.nditer(np_baseball)`.
- If your code is taking too long to run, you might be iterating over a wrong array!



##  Solution 

```
# Import numpy as np
import numpy as np

# For loop over np_height
for x in np_height :
    print(str(x) + " inches")

# For loop over np_baseball
for x in np.nditer(np_baseball) :
    print(x)
```


