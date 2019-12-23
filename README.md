# fyr - Fiscal Year R
Fiscal Year From Date: Returns an integer year from a date based on the starting month of the fiscal year

fy(fy_date, fy_start = 1)


fy_date: Date in date format

fy_start: Must be an integer in range of 1 - 12 to represent the starting month of the fiscal year

### Example
````r
fy(as.Date("2019-05-01"),6)
````
Would return
````r
2019
````
While
````r
fy(as.Date("2019-06-01"),6)
````
Would return
````r
2020
````
