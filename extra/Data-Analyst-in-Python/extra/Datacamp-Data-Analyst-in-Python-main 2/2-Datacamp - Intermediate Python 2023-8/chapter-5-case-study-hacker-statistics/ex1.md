
#  Random float

```
Exercise ID 15686
```

##  Assignment 

Randomness has many uses in science, art, statistics, cryptography, gaming, gambling, and other fields. You're going to use randomness to simulate a game.

All the functionality you need is contained in the `random` package, a sub-package of `numpy`. In this exercise, you'll be using two functions from this package:

- [`seed()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.seed.html): sets the random seed, so that your results are reproducible between simulations. As an argument, it takes an integer of your choosing. If you call the function, no output will be generated.
- [`rand()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.rand.html): if you don't specify any arguments, it generates a random float between zero and one.

##  Instructions 

- Import `numpy` as `np`.
- Use [`seed()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.seed.html) to set the seed; as an argument, pass `123`.
- Generate your first random float with [`rand()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.rand.html) and print it out.



```
# Import numpy as np


# Set the seed


# Generate and print random float

```

##  Hints 

- `import numpy as np` will import `numpy` package under the alias `np`.
- Use `np.random.seed(123)`.
- Use [`np.random.rand()`](https://docs.scipy.org/doc/numpy-1.10.1/reference/generated/numpy.random.rand.html) and print it out by wrapping it in a [`print()`](https://docs.python.org/3/library/functions.html#print) call.



##  Solution 

```
# Import numpy as np
import numpy as np

# Set the seed
np.random.seed(123)

# Generate and print random float
print(np.random.rand())
```


