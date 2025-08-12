
#  None

```
Exercise ID 1095625
```

##  Assignment 

##  Instructions 

Filter `homelessness` for cases where the USA census region is "South Atlantic" or it is "Mid-Atlantic", assigning to `south_mid_atlantic`. **View the printed result.**



```
# Subset for rows in South Atlantic or Mid-Atlantic regions
south_mid_atlantic = ____

# See the result
print(south_mid_atlantic)
```

##  Hints 

The solution takes the form `df[(df["col"] == "value_1") | (df["col"] == "value_2")]`.



##  Solution 

```
# Subset for rows in South Atlantic or Mid-Atlantic regions
south_mid_atlantic = homelessness[(homelessness["region"] == "South Atlantic") | (homelessness["region"] == "Mid-Atlantic")]

# See the result
print(south_mid_atlantic)
```


