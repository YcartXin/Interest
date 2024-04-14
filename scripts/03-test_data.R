#### Preamble ####
# Purpose: Tests the cleaned MLB data of teams between 2000 to 2010 inclusive.
# Author: Tracy Yang
# Date: 11 April, 2024
# Contact: ycart.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: 02-data_cleaning.R


#### Workspace setup ####
library(tidyverse)
library(here)
library(arrow)

#### Importing ####
mlb_test <- read_parquet("data/analysis_data/mlb_data.parquet")


#### Test data ####

## Test Team ##
mlb_test$Team |> unique() |> length() == 30
mlb_test$Team |> is.character()

## Test AVG ##
mlb_test$AVG |> is.numeric()
mlb_test$AVG |> min() >= 0
mlb_test$AVG |> max() <= 0.99

## Test ERA ##
mlb_test$ERA |> is.numeric()
mlb_test$ERA |> min() >= 0

## Test DefEff ##
mlb_test$DefEff |> is.numeric()
mlb_test$DefEff |> min >= 0
mlb_test$DefEff |> max() <= 1

## Test W ##
mlb_test$W |> is.numeric()
mlb_test$W |> length() == 330
