
#  Subsetting rows

```
Exercise ID 1095620
```

##  Assignment 

A large part of data science is about finding which bits of your dataset are interesting. One of the simplest techniques for this is to find a subset of rows that match some criteria. This is sometimes known as **filtering rows** or **selecting rows**.

There are many ways to subset a DataFrame, perhaps the most common is to use relational operators to return `True` or `False` for each row, then pass that inside square brackets.

```
dogs[dogs["height_cm"] &gt; 60]
dogs[dogs["color"] == "tan"]

```

You can filter for multiple conditions at once by using the "bitwise and" operator, `&amp;`.

```
dogs[(dogs["height_cm"] &gt; 60) &amp; (dogs["color"] == "tan")]

```

`homelessness` is available and `pandas` is loaded as `pd`.

##  Pre exercise code 

```
import pandas as pd
homelessness = pd.read_pickle("/usr/local/share/datasets/homeless_data.pkl")
```



##  Solution 

No solution was found.


