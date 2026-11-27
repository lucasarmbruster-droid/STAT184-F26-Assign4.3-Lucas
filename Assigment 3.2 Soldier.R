## Load Packages ----
library(tidyverse)
library(janitor)
library(knitr)
library(kableExtra)

## Import Data
individual_soldier_data <- read_csv("C:/R-Studio/individual_data.csv")


## Seperate men and women
men_individual_soldier_data <- individual_soldier_data %>%
  filter(sex == "Male") %>%   # removes all female soldiers from this data
  tabyl(branch, rank) %>%   # groups all soldiers by their branch and then totals them into their ranks
  adorn_totals(c("row", "col")) %>%  # creates a totals row and column 
  adorn_percentages() %>%  # turns totals into decimal percentages 
  adorn_pct_formatting(digits = 2) %>%  # turns the decimal output to normal percentages
  adorn_ns(position = "front") %>% # places the percentage into parathesis and brings back the absolute total
  kable() %>%  # added borders, slightly darkened every other row, and bolded the total row and column
  kable_styling(bootstrap_options = c("striped", "bordered")) %>%
  row_spec(6, bold = TRUE) %>%
  column_spec(59, bold = TRUE)


women_individual_soldier_data <- individual_soldier_data %>%
  filter(sex == "Female") %>%   # removes all male soldiers from this data
  tabyl(branch, rank) %>%   # groups all soldiers by their branch and then totals them into their ranks
  adorn_totals(c("row", "col")) %>%  # creates a totals row and column 
  adorn_percentages() %>%  # turns totals into decimal percentages 
  adorn_pct_formatting(digits = 2) %>%  # turns the decimal output to normal percentages
  adorn_ns(position = "front") %>% # places the percentage into parathesis and brings back the absolute total
  kable() %>%  # added borders, slightly darkened every other row, and bolded the total row and column
  kable_styling(bootstrap_options = c("striped", "bordered")) %>%
  row_spec(6, bold = TRUE) %>%
  column_spec(59, bold = TRUE)

men_individual_soldier_data

women_individual_soldier_data

