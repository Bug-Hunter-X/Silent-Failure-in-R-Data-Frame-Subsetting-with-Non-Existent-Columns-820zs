```R
# This improved code uses the dplyr package to handle potential errors gracefully.
# It throws an error if any of the columns to select do not exist.

library(dplyr)

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d") # 'd' does not exist

tryCatch({
  subset_df <- select(df, all_of(cols_to_select))
  print(subset_df)
}, error = function(e) {
  cat("Error: ", e$message, "\n")
})
```