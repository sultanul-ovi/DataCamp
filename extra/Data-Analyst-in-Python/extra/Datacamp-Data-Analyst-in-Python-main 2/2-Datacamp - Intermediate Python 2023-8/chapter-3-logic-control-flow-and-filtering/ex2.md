
#  Greater and less than

```
Exercise ID 15658
```

##  Assignment 

In the video, Hugo also talked about the less than and greater than signs, `&lt;` and `&gt;` in Python. You can combine them with an equals sign: `&lt;=` and `&gt;=`. Pay attention: `&lt;=` is valid syntax, but `=&lt;` is not.

All Python expressions in the following code chunk evaluate to `True`:

```
3 &lt; 4
3 &lt;= 4
"alpha" &lt;= "beta"

```

Remember that for string comparison, Python determines the relationship based on alphabetical order.

##  Instructions 

<li>Write Python expressions, wrapped in a [`print()`](https://docs.python.org/3/library/functions.html#print) function, to check whether:<ul>
- `x` is greater than or equal to `-10`. `x` has already been defined for you.
- `"test"` is less than or equal to `y`. `y` has already been defined for you.
- `True` is greater than `False`.


```
# Comparison of integers
x = -3 * 6


# Comparison of strings
y = "test"


# Comparison of booleans

```

##  Hints 

- Use `... &gt;= -10`. Fill in the dots.
- Use `"test" &lt;= ...`. Fill in the dots.
- Use `True &gt; False` in the last instruction. Make sure to wrap your queries in [`print()`](https://docs.python.org/3/library/functions.html#print) calls.



##  Solution 

```
# Comparison of integers
x = -3 * 6
print(x >= -10)

# Comparison of strings
y = "test"
print("test" <= y)

# Comparison of booleans
print(True > False)
```


