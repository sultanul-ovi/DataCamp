
#  None

```
Exercise ID 1095690
```

##  Assignment 

##  Instructions 

- Create a new column of `airline_totals` called `bumps_per_10k`, which is the number of passengers bumped per 10,000 passengers in 2016 and 2017.



```
# From previous steps
airline_bumping = pd.read_csv("airline_bumping.csv")
print(airline_bumping.head())
airline_totals = airline_bumping.groupby("airline")[["nb_bumped", "total_passengers"]].sum()

# Create new col, bumps_per_10k: no. of bumps per 10k passengers for each airline
airline_totals["bumps_per_10k"] = ____ / ____ * 10000
```

##  Hints 

- To compute `bumps_per_10k`, divide `nb_bumped` by `total_passengers`, then multiply by 10,000.



##  Solution 

```
# From previous steps
airline_bumping = pd.read_csv("airline_bumping.csv")
print(airline_bumping.head())
airline_totals = airline_bumping.groupby("airline")[["nb_bumped", "total_passengers"]].sum()

# Create new col, bumps_per_10k: no. of bumps per 10k passengers for each airline
airline_totals["bumps_per_10k"] = airline_totals["nb_bumped"] / airline_totals["total_passengers"] * 10000
```


