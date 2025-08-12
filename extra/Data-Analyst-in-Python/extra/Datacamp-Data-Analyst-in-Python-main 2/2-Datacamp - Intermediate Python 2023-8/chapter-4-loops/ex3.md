
#  Add conditionals

```
Exercise ID 15674
```

##  Assignment 

The `while` loop that corrects the `offset` is a good start, but what if `offset` is negative? You can try to run the following code where `offset` is initialized to `-6`: 

```
# Initialize offset
offset = -6

# Code the while loop
while offset != 0 :
    print("correcting...")
    offset = offset - 1
    print(offset)

```

but your session will be disconnected. The `while` loop will never stop running, because `offset` will be further decreased on every run. `offset != 0` will never become `False` and the `while` loop continues forever.

Fix things by putting an `if`-`else` statement inside the `while` loop. If your code is still taking too long to run, you probably made a mistake!

##  Instructions 

<li>**Inside** the `while` loop, complete the `if`-`else` statement:<ul>
- If `offset` is greater than zero, you should decrease `offset` by 1.
- Else, you should increase `offset` by 1.
**If your code is still taking too long to run (or your session is expiring), you probably made a mistake. Check your code and make sure that the statement `offset != 0` will eventually evaluate to `FALSE`!**



```
# Initialize offset
offset = -6

# Code the while loop
while offset != 0 :
    print("correcting...")
    if ____ :
      ____
    else : 
      ____    
    print(offset)
```

##  Hints 

<li>The structure of the if-else block is<br>
<code>
if check_for_positive_offset :
    offset = decrease_the_value
else :
    offset = increase_the_value
</code></li>
- You could check for an offset greater than 10 with `offset &gt; 10`, for example.
- You could increase the offset by `10` with `offset = offset + 10`.
- The printing of `"correcting..."` should stay at the start of the loop and printing `offset` should stay at the end of the loop.
- Pay close attention to indentation - the `if` and `else` should line up with the `print()` calls, and the changes to `offset` should be indented further in.



##  Solution 

```
# Initialize offset
offset = -6

# Code the while loop
while offset != 0 :
    print("correcting...")
    if offset > 0 :
        offset = offset - 1
    else :
        offset = offset + 1
    print(offset)
```


