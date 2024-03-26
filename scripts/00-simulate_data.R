#### Preamble ####
# Purpose: Simulates an analysis of selected pokemon's weaknesses and strengths
# Author: Tracy Yang
# Date: 11 February 2023
# Contact: ycart.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed?


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####

data <- 
  tibble(
    level = rnorm(n = 800, mean = 100, sd = 10) |> floor(),
    weakness = sample(x = c("water", "ground", "fire"), size = 800, replace = TRUE)
  )