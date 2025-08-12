
#  None

```
Exercise ID 1095688
```

##  Assignment 

##  Instructions 

- Read the CSV file `"airline_bumping.csv"` and store it as a DataFrame called `airline_bumping`.
- Print the first few rows of `airline_bumping`.



```
# Read CSV as DataFrame called airline_bumping
airline_bumping = ____

# Take a look at the DataFrame
print(____)
```

##  Hints 

- You can read a CSV file using `pd.read_csv()`.
- Use `.head()` to print the first few rows of a DataFrame.



##  Solution 

```
# Read CSV as DataFrame called airline_bumping
airline_bumping = pd.read_csv("airline_bumping.csv")

# Take a look at the DataFrame
print(airline_bumping.head())
```


