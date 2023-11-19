
* Read in data: 
insheet using crime-iv.csv, names clear

* ssc install ivreg2
* ssc install ranktest

eststo clear

* Run IV
ivreg2 recidivates (monthsinjail = republicanjudge) severityofcrime

* Store IV
eststo iv

* Output table
esttab using iv.tex, mtitle("IV") label replace tex
