## Introduction

This repository organizes the code, documentation, and project structure for STAT 184 Assignment 3.2. In this assignment, I used R to process individual-level U.S. Armed Forces personnel data (`individual_data.csv`) and generate formatted tables comparing the distribution of service members across ranks and military branches by sex.


Implementation: Discuss in finer detail what you did in the assignment, like what methods you used, how you implemented certain functions, and even what issues you encountered as well as your solution to these issues. Including code chunks can be useful.

## Implementation

The way I went about turning the data from a raw csv file to a clean table for people to read was by using the functions provided in the `tidyverse`, `janitor`, `knitr`, and `kableExtra` packages.  First, I was able to filter out the dataset by sex for their own tables and cross formatted branch and rank using `tably()`. 
```
filter(sex == "Male") %>% 
tabyl(branch, rank) 
```
To make the tables look more professional, I formatted the numbers and bolded key rows and columns using `kableExtra`.
