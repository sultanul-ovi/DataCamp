
#  Avocado supply and demand

```
Exercise ID 1095672
```

##  Assignment 

Scatter plots are ideal for visualizing relationships between numerical variables. In this exercise, you'll compare the number of avocados sold to average price and see if they're at all related. If they're related, you may be able to use one number to predict the other.

`matplotlib.pyplot` has been imported as `plt`, `pandas` has been imported as `pd`, and `avocados` is available.

##  Pre exercise code 

```
import pandas as pd
avocados = pd.read_pickle("/usr/local/share/datasets/avoplotto.pkl")

import matplotlib.pyplot as plt
```



##  Instructions 

- Create a scatter plot with `nb_sold` on the x-axis and `avg_price` on the y-axis. Title it `"Number of avocados sold vs. average price"`.
- Show the plot.



```
# Scatter plot of avg_price vs. nb_sold with title
____.____

# Show the plot
____
```

##  Hints 

- Call `.plot()`, passing `"nb_sold"` and `"avg_price"`, and setting `kind` to `"scatter"`.
- To add a title, use the `title` argument in `.plot()`.



##  Solution 

```
# Scatter plot of avg_price vs. nb_sold with title
avocados.plot(x="nb_sold", y="avg_price", kind="scatter", title="Number of avocados sold vs. average price")

# Show the plot
plt.show()
```


