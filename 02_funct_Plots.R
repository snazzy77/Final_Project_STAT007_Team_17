# Creates a Single Time Series Plot
plot_single_time_series <- function(df, title, y_label, color, add_hline = FALSE) { # <--- ADDED 'add_hline'
  
  # Plot the data directly to the active device (R console/RMD output)
  plot(df$observation_date, df[, 2], # df[, 2] selects the second column (the value)
       type = 'l', 
       main = title,
       xlab = "Date", 
       ylab = y_label, 
       col = color, 
       lwd = 2)
  
  # 1. Add optional horizontal line at y=0 
  if (add_hline) {
    abline(h = 0, col = "black", lty = 2, lwd = 1) # Dashed black line at y=0
  }
  
  grid() 
}


# Creates a histogram for a specified column
plot_histogram <- function(data, column_name, title_suffix) {
  
  # 1. Extract the column vector
  column_vector <- data[[column_name]]
  
  # 2. Define the plot titles and labels
  main_title <- paste("Histogram of", title_suffix)
  x_label <- paste(title_suffix, "(%)")
  
  # 3. Create the histogram plot
  hist(column_vector, 
       main = main_title, 
       xlab = x_label, 
       col = "lightblue", 
       border = "black")
}


# Creates a Density plot for a specified column
plot_density <- function(data, column_name, title_suffix, color) {
  
  column_vector <- data[[column_name]]
  main_title <- paste("Density Plot of", title_suffix)
  x_label <- paste(title_suffix, "(%)")
  
  # Calculate density and plot it
  plot(density(column_vector), 
       main = main_title, 
       xlab = x_label, 
       lwd = 3,
       col = color)
  grid()
}



# Creates a scatter plot for the relationship between two columns.
plot_scatter <- function(data, x_col, y_col, main_title, x_label, y_label, add_trend_line = TRUE) {
  
  # Extract the column vectors
  x_vector <- data[[x_col]]
  y_vector <- data[[y_col]]
  
  # Create the scatter plot
  plot(x_vector, y_vector,
       main = main_title,
       xlab = x_label,
       ylab = y_label,
       pch = 19, # Solid circles
       col = "purple")
  grid()
}

# Creates a scatter plot that compares 3 variables
plot_scatter2 <- function(data, x_col, y_col, main_title, x_label, y_label, color_col = NULL, add_trend_line = TRUE) { # ADDED 'color_col'
  
  # Extract the column vectors
  x_vector <- data[[x_col]]
  y_vector <- data[[y_col]]
  
  # Determine color vector
  if (!is.null(color_col)) {
    # Use the specified column to color the points. 
    # R's base plot will assign distinct colors if this is a factor.
    point_color <- as.factor(data[[color_col]]) 
  } else {
    point_color <- "darkgray" # Default single color
  }
  
  # Create the scatter plot
  plot(x_vector, y_vector,
       main = main_title,
       xlab = x_label,
       ylab = y_label,
       pch = 19, # Solid circles
       col = point_color) # USE THE DYNAMIC COLOR
  grid()
}

