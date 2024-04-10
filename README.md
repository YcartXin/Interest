# Analysis of MLB Team Statistics on Predicting Games Won per Season

## Overview

We examine the Major League Baseball team data from 2000 to 2023 focusing on a team's batting average (AVG), defensive efficiency ratio (DefEff), and earned run average (ERA) to predict the number of games a team would win out of 162 in a season. We estimate an Bayesian hierarchical model which explains their attributes based on their functionality.

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Baseball Reference.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models.
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Data

The MLB data used in this paper is downloaded from https://www.baseball-reference.com/leagues/ then converted from xls files to csv files to be saved in the raw data folder. The data used were downloaded separately for each year and each category of batting, fielding, and pitching. The final cleaned data is combined into one and contains the necessary variables from 2000 to XX.

## Statement on LLM usage

This paper did not incorporate the use of LLM.
