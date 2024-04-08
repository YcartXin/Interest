#### Preamble ####
# Purpose: Simulates the data sets of MLB with variables of interest (AVG, DffEff, ERA, W).
# Author: Tracy Yang
# Date: 2 April 2023
# Contact: ycart.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: -

#### Workspace setup ####
library(tidyverse)
library(dplyr)


#### Simulate data ####
set.seed(11)
teams <- c("NYY", "BOS", "BAL", "TB", "TOR", 
          "DET", "CLE", "MIN", "KC", "CWS",
          "LAA", "TEX", "SEA", "HOU", "OAK",
          "ATL", "WSH", "PHI", "NYM", "MIA",
          "PIT", "MIL", "CHC", "CIN", "STL",
          "LAD", "AZ", "SD", "SF", "COL")

#Data simulated for one season (2000)
data_00 <- 
  tibble(
    Year = 2000,
    Team = sample(x = teams, size = 30, replace = FALSE),
    AVG = rnorm(n = 30, mean = 0.2, sd = 0.1),
    ERA = rnorm(n = 30, mean = 4, sd = 1),
    DffEff = rnorm(n = 30, mean = 0.7, sd = 0.01)
  )

#Data simulated for one season (2001)
data_01 <- 
  tibble(
    Year = 2001,
    Team = sample(x = teams, size = 30, replace = FALSE),
    AVG = rnorm(n = 30, mean = 0.2, sd = 0.1),
    ERA = rnorm(n = 30, mean = 4, sd = 1),
    DffEff = rnorm(n = 30, mean = 0.7, sd = 0.01)
  )

#Simulating combining data for different seasons
sim_data <- rbind(data_00, data_01)

#Testing simulated data

