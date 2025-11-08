#Installing Needed Packages

# Define the list of packages needed
packages_needed <- c("tidyverse")

# Check if packages are installed, and install them if they are not
install_if_missing <- function(p) {
  if (!requireNamespace(p, quietly = TRUE)) {
    install.packages(p, dependencies = TRUE)
  }
}
sapply(packages_needed, install_if_missing)
suppressPackageStartupMessages(library(tidyverse))

# Print a confirmation message
cat("Required libraries loaded successfully.\n")

