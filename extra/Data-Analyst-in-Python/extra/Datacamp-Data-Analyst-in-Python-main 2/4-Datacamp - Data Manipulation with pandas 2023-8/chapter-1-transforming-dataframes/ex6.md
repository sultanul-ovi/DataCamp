
#  Subsetting rows by categorical variables

```
Exercise ID 1095624
```

##  Assignment 

Subsetting data based on a categorical variable often involves using the "or" operator (`|`) to select rows from multiple categories. This can get tedious when you want all states in one of three different regions, for example. 
Instead, use the `.isin()` method, which will allow you to tackle this problem by writing one condition instead of three separate ones.

```
colors = ["brown", "black", "tan"]
condition = dogs["color"].isin(colors)
dogs[condition]

```

`homelessness` is available and `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
homelessness = pd.read_pickle("/usr/local/share/datasets/homeless_data.pkl")
```



##  Solution 

No solution was found.


