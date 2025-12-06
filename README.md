# STAT107_Team-17_Financial-Crisis

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
- **31_Data_Visualization.Rmd** - Has all the graphs, charts, models, and summaries in one place.
- **FinalReport.Rmd** – Main analytical report combining data, plots, and discussion.

### **Other Files**
- **README.md** – This file, providing an overview and reproduction instructions.

### **RData Files**
- **12_Cleaned_Data.RData** - Contains the data from **DataCleaning.Rmd**.
- **final_analysis_environment.RData** - Contains the data from **31_Data_Visualization.Rmd**.

---

## How to Reproduce the Results

Follow these steps to reproduce the all Rmd files:

1. **Clone or download** this repository to your local machine, by going to rstudio, file, new project, version control, git, and paste the link below. You should now have all the files in your directory. You can also just download the files mentioned below and upload into your RStudio workspace manually.
   ```bash
   https://github.com/snazzy77/STAT107_Team-17_Financial-Crisis.git
2. Now you have to import the three datasets.
3. First you need to run **00_requirements.R** so that you can load in all the necessary packages. To run the code you have to highlight the code and ctrl+enter to run.
4. Then you have to run **01_funct_DataCleaning.R** so that you have the functions to clean and preprocess the data for the next step. To run the code you have to highlight the code and ctrl+enter to run.
5. Then you have to run **02_funct_Plots.R** so that you get the functions to make the plots and visualizations. To run the code you have to highlight the code and ctrl+enter to run.
6. Then you have to run **DataCleaning.Rmd** so that you can use the functions in the previous step to get the cleaned and preprocessed data. To run the code click the run dropdown and click run all.
7. Then you have to run **31_Data_Visualization.Rmd** so that you can use the functions that were made in the funct_Plots to create the visualizations. To run the code click the run dropdown and click run all.
8. Lastly you have to run **FinalReport.Rmd** so that you can get the full analytical report. To run the code click the run dropdown and click run all.
    Then to get the pdf just knit the R markdown file to a pdf.

Follow the following steps if you want to just reproduce **FinalReport.Rmd**:
1. **Clone or download** this repository to your local machine, by going to rstudio, file, new project, version control, git, and paste the link below. You should now have all the files in your directory. You can also just download the files mentioned below and upload into your RStudio workspace manually.
   ```bash
   https://github.com/snazzy77/STAT107_Team-17_Financial-Crisis.git
2. Now import/load **12_Cleaned_Data.RData** & **final_analysis_environment.RData** into your enviornment.
3. Now open the **FinalReport.Rmd** and go to the top and click the run dropdown and click run all.
