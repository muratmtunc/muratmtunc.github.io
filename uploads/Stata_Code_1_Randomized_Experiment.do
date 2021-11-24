*** Murat M. Tunc
*** Tilburg University, May 2021
*** Methodology Session on Causal Inference
*** Identification Strategies: 1. Randomized Experiment

clear all
set more off

*** Set to directory where data is located
cd "C:\data"

use Dataset_1_Voucher_Success_RE, clear

*** 1) Two-sample t-test: Between Voucher receivers and non-receivers

ttest post_ach, by(voucher)

*** 2) Regression: Effect of Voucher on Academic Success

reg post_ach voucher

*** 3) Regression with covariates: Effect of Voucher on Academic Success with a Control Variable (Pre-voucher success)

reg post_ach voucher pre_ach