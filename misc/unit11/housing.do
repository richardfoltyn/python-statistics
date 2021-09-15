/*

Run OLS regression for housing starts on lagged house prices in Stata.

Author: Richard Foltyn

*/


global DATADIR = "../../data"

import delimited using "${DATADIR}/HOUSING.csv", clear

desc

// Generate date variable

generate date = ym(year,month)
format %tm date

tsset date

// Normalize prices to 1982-1984
replace aspnhs = aspnhs / cpi * 100


generate log_aspnhs = log(aspnhs)
generate log_nhstart = log(nhstart)

regress log_nhstart L3.log_aspnhs L6.log_aspnhs L12.log_aspnhs if year >= 2000
