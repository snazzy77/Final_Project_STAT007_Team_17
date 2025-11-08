# Final_Project_STAT007_Team_17

This project analyzes key U.S. economic indicators, including the Federal Funds Rate, GDP growth, and unemployment rates, to study macroeconomic relationships and trends.

---

## Repository Structure

### **Data Files**
- **FEDFUNDS.csv** – Contains Federal Funds Rate data from the Federal Reserve.
- **GDP_GROWTH_RATE.csv** – Contains GDP growth rate data.
- **UNRATE.csv** – Contains U.S. unemployment rate data.

### **R Scripts**
- **00_requirements.R** – Installs and loads all required R packages.
- **01_funct_DataCleaning.R** – Contains user-defined functions for data cleaning and preprocessing.
- **02_funct_Plots.R** – Contains plotting and visualization functions.

### **R Markdown Files**
- **DataCleaning.Rmd** – Demonstrates data cleaning workflow and intermediate results.
- **FinalReport.Rmd** – Main analytical report combining data, plots, and discussion.

### **Other Files**
- **README.md** – This file, providing an overview and reproduction instructions.

---

## How to Reproduce the Results

Follow these steps to reproduce the analysis:

1. **Clone or download** this repository to your local machine.
   ```bash
   git clone <repo-url>

2. Once you have all the files on your local machine, then open Rstudio.
3. First you need to run **00_requirements.R** so that you can load in all the necessary packages.
4. Then you have to run **00_requirements.R** so that you have the functions to clean and preprocess the data for the next step.
5. Then you have to run **DataCleaning.Rmd** so that you can use the functions in the previous step to get the cleaned and preprocessed data.
6. Then you have to run **02_funct_Plots.R** so that you get the functions to make the plots and visualizations.
7. Lastly you have to run **FinalReport.Rmd** so that you can get the full analytical report.
8. Then to get the pdf just knit the R markdown file to a pdf.
