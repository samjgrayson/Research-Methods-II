/* Type these commands to install the "estout" package: 

ssc install estout

Also: Note you can type help [command] into Stata to get help on any command. 
*/

* Read in data: 
insheet using assignment1-research-methods.csv, names clear

* Label your variables
label variable eliteschoolcandidate "Elite School Candidate"
label variable calledback "Called Back"
label variable malecandidate "Male Candidate"

* Run regression: 
reg calledback i.malecandidate eliteschoolcandidate

* Store regression
eststo regression_one 


**********************************
* FOR PEOPLE USING MICROSOFT: 
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab regression_one using HW1-Table-Gender.rtf, $tableoptions drop(0.malecandidate _cons) 

* I was getting an error when trying to rewrite HW1-Table.rtf, so I had to create a new table called HW1-Table-Gender.rtf. Is there a resolution for this? I know the exercise asked us to just update the existing table...
