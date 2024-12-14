# R Data Frame Subsetting Bug
This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors of column names.  When the specified vector includes names of columns that don't exist, the code runs without throwing an error, but the result is a data frame with missing columns, which can be difficult to debug.  The `bug.R` file contains the buggy code, while `bugSolution.R` presents a corrected version using more robust error handling.

## Problem Description
The issue stems from the way R handles indexing when using character vectors. If a column name doesn't exist, it's silently dropped. This behavior can lead to unexpected results and makes debugging challenging.

## Solution
The solution uses `dplyr` package which throws informative error messages when attempting to access non-existent columns.