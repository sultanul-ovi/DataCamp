
#  Replacing missing values

```
Exercise ID 1095680
```

##  Assignment 

Another way of handling missing values is to replace them all with the same value. For numerical variables, one option is to replace values with 0&mdash; you'll do this here. However, when you replace missing values, you make assumptions about what a missing value means. In this case, you will assume that a missing number sold means that no sales for that avocado type were made that week. 

In this exercise, you'll see how replacing missing values can affect the distribution of a variable using histograms. You can plot histograms for multiple variables at a time as follows:

```
dogs[["height_cm", "weight_kg"]].hist()

```

`pandas` has been imported as `pd` and `matplotlib.pyplot` has been imported as `plt`. The `avocados_2016` dataset is available.

##  Pre exercise code 

```
import pandas as pd
avocados_2016 = pd.read_pickle("/usr/local/share/datasets/avos_2016.pkl")

import matplotlib.pyplot as plt
```



##  Solution 

No solution was found.


