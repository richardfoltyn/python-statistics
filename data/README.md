# Data files 

These data files are used for illustrative purposes throughout the course.

## FRED data

Contains annual data from [FRED](https://fred.stlouisfed.org/).

### Annual data

Variables:

-   `GDP`: Real gross domestic product in billions of chained
    2012 US dollars ([GDPC1](https://fred.stlouisfed.org/series/GDPC1))
-   `CPI`: Consumer Price Index for All Urban Consumers: All Items in U.S. City Average
    ([CPIAUCSL](https://fred.stlouisfed.org/series/CPIAUCSL)).
    Price level is normalised so that the average in 1982-1984
    is 100.
-   `UNRATE`: Unemployment rate ([UNRATE](https://fred.stlouisfed.org/series/UNRATE))

There is a comma-separated (`FRED.csv`) and a fixed-width
(`FRED-fixed.csv`) version of this data.

### Quarterly data

The CSV file `FREQ_QTR.csv` contains data at quarterly frequencies.
In addition to the variables listed above, it also includes

-   `LFPART`: Labour force participation rate in percent
    ([CIVPART](https://fred.stlouisfed.org/series/CIVPART))
-   `GDPPOT`: Real potential GDP in billions of chained 
    2012 US dollars ([GDPPOT](https://fred.stlouisfed.org/series/GDPPOT))
-   `NROU`: Natural rate of unemployment in percent 
    ([NROU](https://fred.stlouisfed.org/series/NROU))

## Universities data

Sample of 23 UK universities. Data was compiled
from universities' Wikipedia pages and the Wikipedia
page for the Russell group.

Variables:

-   `Instititution`: Name of the institution
-   `Country`: Country/nation within the UK (England, Scotland, ...)
-   `Founded`: Year in which university (or a predecessor institution)
    was founded
-   `Students`: Total number of students
-   `Staff`: Number of academic staff
-   `Admin`: Number of administrative staff
-   `Budget`: Budget in million pounds
-   `Russell`: Binary indicator whether university is a member of the
    [Russell Group](https://en.wikipedia.org/wiki/Russell_Group),
    an association of the UK's top research universities.
    
There is a CSV variant (`universities.csv`) using `;`
as separator and an Excel 2003 variant (`universities.xlsx`). 