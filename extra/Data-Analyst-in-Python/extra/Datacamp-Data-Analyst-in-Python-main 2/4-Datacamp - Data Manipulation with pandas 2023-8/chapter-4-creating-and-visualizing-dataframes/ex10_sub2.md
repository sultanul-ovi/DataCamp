
#  None

```
Exercise ID 1095689
```

##  Assignment 

##  Instructions 

- For each airline group, select the `nb_bumped`, and `total_passengers` columns, and calculate the sum (for both years). Store this as `airline_totals`.



```
# From previous step
airline_bumping = pd.read_csv("airline_bumping.csv")
print(airline_bumping.head())

# For each airline, select nb_bumped and total_passengers and sum
airline_totals = airline_bumping.groupby(____)[[____]].____
```

##  Hints 

- Group by `airline` to get the totals for each airline.



##  Solution 

```
# From previous step
airline_bumping = pd.read_csv("airline_bumping.csv")
print(airline_bumping.head())

# For each airline, select nb_bumped and total_passengers and sum
airline_totals = airline_bumping.groupby("airline")[["nb_bumped", "total_passengers"]].sum()
```


