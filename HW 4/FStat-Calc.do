
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
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab iv using IV_output.rtf


