# fyr - Fiscal Year R
Fiscal Year From Date: Returns an integer year from a date based on the starting month of the fiscal year

### To Install:
````r
install.packages("devtools")
devtools::install_github("michaelvalcic/fyr")
````
### Syntax:
fy(fy_date, fy_start)

fy_date: Date in date format

fy_start: Must be an integer in range of 1 - 12 to represent the starting month of the fiscal year. The default is 7.

### Example:
````r
fy(as.Date("2019-06-01"),7)
````
Would return
````r
2019
````
While
````r
fy(as.Date("2019-07-01"),7)
````
Would return
````r
2020
````
