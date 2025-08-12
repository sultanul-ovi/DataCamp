
#  Slicing time series

```
Exercise ID 1095663
```

##  Assignment 

Slicing is particularly useful for time series since it's a common thing to want to filter for data within a date range. Add the `date` column to the index, then use `.loc[]` to perform the subsetting. The important thing to remember is to keep your dates in ISO 8601 format, that is, `"yyyy-mm-dd"` for year-month-day, `"yyyy-mm"` for year-month, and `"yyyy"` for year.

Recall from Chapter 1 that you can combine multiple Boolean conditions using logical operators, such as `&amp;`. To do so in one line of code, you'll need to add parentheses `()` around each condition. 

`pandas` is loaded as `pd` and `temperatures`, with no index, is available.

##  Pre exercise code 

```
import pandas as pd
temperatures = pd.read_pickle("/usr/local/share/datasets/temperatures_no_unc.pkl")
```



##  Instructions 

- Use Boolean conditions, not `.isin()` or `.loc[]`, and the full date `"yyyy-mm-dd"`, to subset `temperatures` for rows in 2010 and 2011 and print the results.
- Set the index of `temperatures` to the `date` column and sort it.
- Use `.loc[]` to subset `temperatures_ind` for rows in 2010 and 2011.
- Use `.loc[]` to subset `temperatures_ind` for rows from Aug 2010 to Feb 2011.



```
# Use Boolean conditions to subset temperatures for rows in 2010 and 2011
temperatures_bool = ____[(____ >= ____) & (____ <= ____)]
print(temperatures_bool)

# Set date as the index and sort the index
temperatures_ind = temperatures.____.____

# Use .loc[] to subset temperatures_ind for rows in 2010 and 2011
print(____)

# Use .loc[] to subset temperatures_ind for rows from Aug 2010 to Feb 2011
print(____)
```

##  Hints 

- Subsetting via Boolean conditions takes the form `df[(condition1) &amp; (condition2)]`.
- Dates in 2010-2011 are between `2010-01-01` and `2011-12-31`.
- Use `.set_index()` to set the index, followed by `.sort_index()` to sort the index.
- Subsetting via `.loc[]` takes the form `df["first":"last"]` and is inclusive.



##  Solution 

```
# Use Boolean conditions to subset temperatures for rows in 2010 and 2011
temperatures_bool = temperatures[(temperatures["date"] >= "2010-01-01") & (temperatures["date"] <= "2011-12-31")]
print(temperatures_bool)

# Set date as the index and sort the index
temperatures_ind = temperatures.set_index("date").sort_index()

# Use .loc[] to subset temperatures_ind for rows in 2010 and 2011
print(temperatures_ind.loc["2010":"2011"])

# Use .loc[] to subset temperatures_ind for rows from Aug 2010 to Feb 2011
print(temperatures_ind.loc["2010-08":"2011-02"])
```


