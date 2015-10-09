# Our awesome collaborative project ---------------------------------------

rm(list = ls())
library(stargazer)

# Run the code that creates useful functions ------------------------------

source("02_Analysis/01_Helper_Functions.R")

# Run the code that generates our dummy data ------------------------------

# Set the random number seed
RNG_seed <- 1234

# Define population parameters
N <- 100
J <- 5

# Generate the data
source("02_Analysis/02_Generate_Fake_Data.R")

# Take a look at the data
head(data)

# Run the code to generate the main analyses ------------------------------

# Run analyses
source("02_Analysis/03_Main_Analyses_.R")

# Run the code to generate tables -----------------------------------------

source("02_Analysis/03_Main_Analyses_Table.R")

# Run the code to output figures ------------------------------------------

source("02_Analysis/03_Main_Analyses_Plot.R")

