clean_data <- function(file_path, new_col_name, original_col_name) {
  
  # 1. Read the CSV file using Base R's read.csv()
  df <- as.data.frame(read.csv(file_path)) 
  
  # 2. Convert observation_date to Date type (Base R)
  df$observation_date <- as.Date(df$observation_date)
  
  # 3. Rename the column (Base R)
  names(df)[names(df) == original_col_name] <- new_col_name
  
  return(df)
}

# --- Custom Merging Function (Base R) ---
# Merges the three processed data frames using sequential Base R merge() for inner join.
merge_macro_data <- function(fedfunds_df, gdp_df, unrate_df) {
  
  # Step 1: Merge FEDFUNDS and GDP data (Inner Join: all = FALSE)
  intermediate_data <- merge(fedfunds_df, gdp_df, 
                             by = "observation_date", 
                             all = FALSE) 
  
  # Step 2: Merge the intermediate result with UNRATE data
  combined_data <- merge(intermediate_data, unrate_df, 
                         by = "observation_date", 
                         all = FALSE)
  
  return(combined_data)
}