
#  Dictionary of lists

```
Exercise ID 1095685
```

##  Assignment 

Some more data just came in! This time, you'll use the dictionary of lists method, parsing the data column by column.

|date|small_sold|large_sold
|------
|"2019-11-17"|10859987|7674135
|"2019-12-01"|9291631|6238096

`pandas` as `pd` is imported.

##  Pre exercise code 

```
import pandas as pd
```



##  Instructions 

- Create a dictionary of lists with the new data called `avocados_dict`.
- Convert the dictionary to a DataFrame called `avocados_2019`.
- Print your new DataFrame.



```
# Create a dictionary of lists with new data
avocados_dict = {
  "____": [____],
  "____": [____],
  "____": [____]
}

# Convert dictionary into DataFrame
avocados_2019 = ____

# Print the new DataFrame
____
```

##  Hints 

- In a dictionary, column names are represented as keys.
- Each column should have its own key-value pair in the dictionary.
- Values can be stored in the dictionary in lists.



##  Solution 

```
# Create a dictionary of lists with new data
avocados_dict = {
  "date": ["2019-11-17", "2019-12-01"],
  "small_sold": [10859987, 9291631],
  "large_sold": [7674135, 6238096]
}

# Convert dictionary into DataFrame
avocados_2019 = pd.DataFrame(avocados_dict)

# Print the new DataFrame
print(avocados_2019)
```


