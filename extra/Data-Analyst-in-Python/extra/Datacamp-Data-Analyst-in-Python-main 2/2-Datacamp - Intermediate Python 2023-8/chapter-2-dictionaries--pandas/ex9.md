
#  CSV to DataFrame (1)

```
Exercise ID 15616
```

##  Assignment 

Putting data in a dictionary and then building a DataFrame works, but it's not very efficient. What if you're dealing with millions of observations? In those cases, the data is typically available as files with a regular structure. One of those file types is the CSV file, which is short for "comma-separated values".

To import CSV data into Python as a Pandas DataFrame you can use [`read_csv()`](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_csv.html).

Let's explore this function with the same cars data from the previous exercises. This time, however, the data is available in a CSV file, named `cars.csv`. It is available in your current working directory, so the path to the file is simply `'cars.csv'`.

##  Pre exercise code 

```
f = open('cars.csv', "w")
f.write(""",cars_per_cap,country,drives_right
US,809,United States,True
AUS,731,Australia,False
JPN,588,Japan,False
IN,18,India,False
RU,200,Russia,True
MOR,70,Morocco,True
EG,45,Egypt,True""")
f.close()
```



##  Instructions 

- To import CSV files you still need the `pandas` package: import it as `pd`.
- Use [`pd.read_csv()`](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_csv.html) to import `cars.csv` data as a DataFrame. Store this DataFrame as `cars`.
- Print out `cars`. Does everything look OK?



```
# Import pandas as pd


# Import the cars.csv data: cars


# Print out cars

```

##  Hints 

- Use `pd.read_csv('cars.csv')` to import the data. Make sure to store the resulting DataFrame as `cars`.
- To print out a variable `x`, you write `print(x)`.



##  Solution 

```
# Import pandas as pd
import pandas as pd

# Import the cars.csv data: cars
cars = pd.read_csv('cars.csv')

# Print out cars
print(cars)
```


