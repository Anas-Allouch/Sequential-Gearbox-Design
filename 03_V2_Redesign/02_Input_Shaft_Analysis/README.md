This folder presents input shaft analysis. From free body diagram, to moment diagrams for each case that we have, to finally fatigue analysis.  
Regarding fatigue analysis, I used all 4 different criterias that Shigley had in his book. However, the important safety factor that I will be using as my reference
safety factor is Goodman. And in some places, ASME elliptic criteria might produce low values, and that's completely normal when the moment values at that location are low. And that weird behavior is one of the reasons why Goodman is the criteria to follow since it is conservative in all cases.  
The calculations and formulas details will not be shown until the final polished report.  
An excel table in "Shaft_Analysis" folder contains the different safety factors at each shaft feature ( shoulders, grooves, keyways, ... )  

Calculations were done with the help of the matlab code that can be found in 08_MATLAB_Scripts in its dedicated folder.
