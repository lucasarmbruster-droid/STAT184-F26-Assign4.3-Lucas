## Introduction

This repository organizes the code, documentation, and project structure for STAT 184 Assignment 3.2. In this assignment, I used R to process individual-level U.S. Armed Forces personnel data (`individual_data.csv`) and generate formatted tables comparing the distribution of service members across ranks and military branches by sex.

## Implementation

The way I went about turning the data from a raw csv file to a clean table for people to read was by using the functions provided in the `tidyverse`, `janitor`, `knitr`, and `kableExtra` packages.  First, I was able to filter out the dataset by sex for their own tables and cross formatted branch and rank using `tably()`. 
```
filter(sex == "Male") %>% 
tabyl(branch, rank) 
```
To make the tables look more professional, I formatted the numbers and bolded key rows and columns using `kableExtra`.

## Results

The script successfully transforms over 1.25 million individual personnel records into two clean summary tables, one for male service members and one for female service members, comparing rank distributions across all five military branches (Air Force, Army, Marine Corps, Navy, and Space Force). Each cell displays both the raw headcount and the corresponding percentage, with bolded totals for quick reference.

![Formatted summary table of military personnel by branch and rank](https://github.com/user-attachments/assets/2e345fbe-8db5-4dfc-876d-eff5dbc9bbbe)

Through this assignment, I learned how to combine `janitor::tabyl()` with `knitr` and `kableExtra` to summarize large raw datasets into readable, styled tables. This workflow will be directly useful for presenting clean data summaries in future R scripts and Quarto reports.
