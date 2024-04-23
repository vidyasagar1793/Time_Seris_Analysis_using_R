# TIME SERIES ANALYSIS FOR ENERGY CONSUMPTION(GERMANY)
Daily energy consumption for Germany, performs various data manipulation and visualization tasks, and provides insights into energy consumption trends.

## Instructions

>Required Packages (ggplot2 and dplyr) are installed. You can install them using the install.packages() function
<h4>Data Loading</h4>

- The script loads the data from the file "opsd_germany_daily.txt". Ensure that this file is present in your working directory or provide the correct file path when running the script.
<h4>Data Manipulation</h4>

- The script performs various data manipulation tasks such as converting date strings to Date objects, extracting year, month, and day from the date, and combining them with the original dataset.
<h4>Data Visualization</h4>

- Several plots are generated to visualize trends in energy consumption, solar energy generation, and wind energy generation over time.
- Boxplots are created to compare energy consumption across different months and days.
<h4>Summary Statistics</h4>

- Summary statistics are calculated for the dataset using the summary() function.
<h4>Handling Missing Data</h4>

- The R script identifies and handles missing values in the dataset, providing insights into the extent of missing data.
