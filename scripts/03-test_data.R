#### Preamble ####
# Purpose: Tests the cleaned MLB data of teams between 2000 to 2010 inclusive.
# Author: Tracy Yang
# Date: 11 April, 2024
# Contact: ycart.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: 02-data_cleaning.R
# mlb_2024 data tests are less extensive as it is one year of the same format data 
# cleaned the same way as mlb_data


#### Workspace setup ####
library(tidyverse)
library(here)
library(arrow)

#### Importing ####
mlb_test <- read_parquet("data/analysis_data/mlb_data.parquet")
mlb_2024_test <- read_parquet("data/analysis_data/mlb_2024.parquet")


#### Test data ####

## Test Team ##
mlb_test$Tm |> unique() |> length() == 30
mlb_test$Tm |> is.character()
mlb_2024_test$Tm |> unique() |> length() == 30
mlb_2024_test$Tm |> is.character()

## Test AVG ##
mlb_test$BA |> is.numeric()
mlb_test$BA |> min() >= 0
mlb_test$BA |> max() <= 0.99
mlb_2024_test$BA |> is.numeric()
mlb_2024_test$BA |> min() >= 0

## Test ERA ##
mlb_test$ERA |> is.numeric()
mlb_test$ERA |> min() >= 0
mlb_2024_test$ERA |> is.numeric()
mlb_2024_test$ERA |> min() >= 0

## Test DefEff ##
mlb_test$DefEff |> is.numeric()
mlb_test$DefEff |> min >= 0
mlb_test$DefEff |> max() <= 1
mlb_2024_test$DefEff |> is.numeric()
mlb_2024_test$DefEff |> min() >= 0

## Test W ##
mlb_test$W |> is.numeric()
mlb_test$W |> length() == 330
mlb_2024_test$W |> is.numeric()
mlb_2024_test$W |> length() == 30
