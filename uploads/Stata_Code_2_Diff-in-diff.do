*** Murat M. Tunc
*** Tilburg University, May 2021
*** Methodology Session on Causal Inference
*** Identification Strategies: 2. Natural Experiments

clear all
set more off

*** Set to directory where data is located

cd "C:\data"

use Dataset_2_Minimum_Wage_Employment_DiD, clear

*** Decleare the data to be a panel dataset, with id = store_id and time = time

xtset store_id time

*** Difference-in-difference estimation: Impact of minimum wage on full-time employment

xtreg y_ft_employment c.d_nj##c.time, fe cluster(store_id)