
#  Pivot temperature by city and year

```
Exercise ID 1095666
```

##  Assignment 

It's interesting to see how temperatures for each city change over time—looking at every month results in a big table, which can be tricky to reason about. Instead, let's look at how temperatures change by year.

You can access the components of a date (year, month and day) using code of the form `dataframe["column"].dt.component`. For example, the month component is `dataframe["column"].dt.month`, and the year component is `dataframe["column"].dt.year`.

Once you have the year column, you can create a pivot table with the data aggregated by city and year, which you'll explore in the coming exercises.

`pandas` is loaded as `pd`. `temperatures` is available.

##  Pre exercise code 

```
import pandas as pd
temperatures = pd.read_pickle("/usr/local/share/datasets/temperatures_no_unc.pkl")
```



##  Instructions 

- Add a `year` column to `temperatures`, from the `year` component of the `date` column.
- Make a pivot table of the `avg_temp_c` column, with `country` and `city` as rows, and `year` as columns. Assign to `temp_by_country_city_vs_year`, and **look at the result**.



```
# Add a year column to temperatures
____

# Pivot avg_temp_c by country and city vs year
temp_by_country_city_vs_year = ____

# See the result
print(temp_by_country_city_vs_year)
```

##  Hints 

- Access the year component of the column using `dataframe["column"].dt.year`.
- Call `.pivot_table()`, passing the temperature column, and setting `index` to a list containing `"country"` and `"city"` and `columns` to `"year"`.



##  Solution 

```
# Add a year column to temperatures
temperatures["year"] = temperatures["date"].dt.year

# Pivot avg_temp_c by country and city vs year
temp_by_country_city_vs_year = temperatures.pivot_table("avg_temp_c", index = ["country", "city"], columns = "year")

# See the result
print(temp_by_country_city_vs_year)
```


