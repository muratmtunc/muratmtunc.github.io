*** Murat M. Tunc
*** Tilburg University, May 2021
*** Methodology Session on Causal Inference
*** Identification Strategies: 4. Instrumental Variable

clear all
set more off

*** Set to directory where data is located

cd "C:\data"

use Dataset_4_Schooling_Wage_IV, clear

*** Generate a set of dummy variables for quarters of birth, q1 for first quarter, q2 for second quarter, and so on 

tab qob, gen(q)

*** Instrumental variable estimation: Impact of schooling on wages, using birth in quarter 4 as instrument

ivregress 2sls lnw (s = q4), robust