use HumanResourcesGen,clear

sum AvgLongevity AvgSalary AvgHouseholdSize AvgEducationYrs AvgAge

reg AvgLongevity AvgSalary

** Graphical representation of salary have effect on employee longevity using quadratic form***
gen AvgSalary2 = AvgSalary^2
reg AvgLongevity AvgSalary AvgSalary2
predict phat,xb
sort AvgSalary
twoway (scatter AvgLongevity AvgSalary) (line phat AvgSalary)

reg AvgLongevity AvgSalary AvgEducationYrs AvgAge

reg AvgLongevity AvgSalary AvgEducationYrs AvgAge CompetingLocalFirms ProportionMale AvgHouseholdSize LocalUnemployment

