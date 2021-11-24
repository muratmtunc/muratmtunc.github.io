*** Murat M. Tunc
*** Tilburg University, May 2021
*** Methodology Session on Causal Inference
*** Identification Strategies: 3. Regression Discontinuity

clear all
set more off

*** Set to directory where data is located

cd "C:\data"

use Dataset_3_Drinking_Age_Accidents_RD, clear

*** Generate a new variable called over21, and define it as age greater than or equal to 21

gen over21 = agecell >= 21

*** Regression Discontinuity Estimation: The impact of minimum legal drinking age (over21) on motor vehicle accidents (mva)

reg mva over21 agecell, robust