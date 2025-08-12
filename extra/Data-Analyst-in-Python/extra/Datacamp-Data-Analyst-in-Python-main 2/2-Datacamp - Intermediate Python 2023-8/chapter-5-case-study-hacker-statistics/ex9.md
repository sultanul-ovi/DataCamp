
#  Implement clumsiness

```
Exercise ID 15694
```

##  Assignment 

With this neatly written code of yours, changing the number of times the random walk should be simulated is super-easy. You simply update the [`range()`](https://docs.python.org/3/library/functions.html#func-range) function in the top-level `for` loop.

There's still something we forgot! You're a bit clumsy and you have a 0.5% chance of falling down. That calls for another random number generation. Basically, you can generate a random float between `0` and `1`. If this value is less than or equal to 0.005, you should reset step to 0.

##  Pre exercise code 

```
import matplotlib.pyplot as plt
plt.clf()
import numpy as np
np.random.seed(123)
```



##  Instructions 

- Change the [`range()`](https://docs.python.org/3/library/functions.html#func-range) function so that the simulation is performed 20 times.
- Finish the `if` condition so that `step` is set to 0 if a random float is less or equal to 0.005. Use [`np.random.rand()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.rand.html).



```
# numpy and matplotlib imported, seed set

# clear the plot so it doesn't get cluttered if you run this many times
plt.clf()

# Simulate random walk 20 times
all_walks = []
for i in range(5) :
    random_walk = [0]
    for x in range(100) :
        step = random_walk[-1]
        dice = np.random.randint(1,7)
        if dice <= 2:
            step = max(0, step - 1)
        elif dice <= 5:
            step = step + 1
        else:
            step = step + np.random.randint(1,7)

        # Implement clumsiness
        if ___ :
            step = 0

        random_walk.append(step)
    all_walks.append(random_walk)

# Create and plot np_aw_t
np_aw_t = np.transpose(np.array(all_walks))
plt.plot(np_aw_t)
plt.show()
```

##  Hints 

- Change `range(5)` in the top-level `for` loop to `range(20)`, it's as simple as that.
- The `if` condition should be `np.random.rand() &lt;= 0.005`.



##  Solution 

```
# numpy and matplotlib imported, seed set

# clear the plot so it doesn't get cluttered if you run this many times
plt.clf()

# Simulate random walk 20 times
all_walks = []
for i in range(20) :
    random_walk = [0]
    for x in range(100) :
        step = random_walk[-1]
        dice = np.random.randint(1,7)
        if dice <= 2:
            step = max(0, step - 1)
        elif dice <= 5:
            step = step + 1
        else:
            step = step + np.random.randint(1,7)

        # Implement clumsiness
        if np.random.rand() <= 0.005 :
            step = 0

        random_walk.append(step)
    all_walks.append(random_walk)

# Create and plot np_aw_t
np_aw_t = np.transpose(np.array(all_walks))
plt.plot(np_aw_t)
plt.show()
```


