#### Preamble ####
# Purpose: Models the relationships between three predictor variables on MLB team wins in a season.
# Author: Tracy Yang
# Date: 20 April, 2024
# Contact: ycart.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: 02-data_cleaning


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
mlb_data <- read_parquet("data/analysis_data/mlb_data.parquet")

### Model data ####
model <-
  stan_glm(
    formula = W ~ BA + DefEff + ERA,
    data = mlb_data,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 11
  )


#### Save model ####
saveRDS(
  model,
  file = "models/model.rds"
)


