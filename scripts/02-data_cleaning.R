#### Preamble ####
# Purpose: Cleans the raw Baseball Reference batting, pitching, and fielding data from years 2000 to 
# Author: Tracy Yang
# Date: 8 April, 20204
# Contact: ycart.yang@mail.utoronto.ca
# License: MIT
# Pre-requisites: -
# Data source and preparation specified in 01-download_data and README.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####

#2000
b2000 <- read_csv("data/raw_data/2000B.csv")
f2000 <- read_csv("data/raw_data/2000F.csv")
p2000 <- read_csv("data/raw_data/2000P.csv")
data2000 <- cbind(b2000[1:30, c("Tm", "BA")], f2000[1:30, c("DefEff")], p2000[1:30, c("ERA", "W")])
#2001
b2001 <- read_csv("data/raw_data/2001B.csv")
f2001 <- read_csv("data/raw_data/2001F.csv")
p2001 <- read_csv("data/raw_data/2001P.csv")
data2001 <- cbind(b2001[1:30, c("Tm", "BA")], f2001[1:30, c("DefEff")], p2001[1:30, c("ERA", "W")])
#2002
b2002 <- read_csv("data/raw_data/2002B.csv")
f2002 <- read_csv("data/raw_data/2002F.csv")
p2002 <- read_csv("data/raw_data/2002P.csv")
data2002 <- cbind(b2002[1:30, c("Tm", "BA")], f2002[1:30, c("DefEff")], p2002[1:30, c("ERA", "W")])
#2003
b2003 <- read_csv("data/raw_data/2003B.csv")
f2003 <- read_csv("data/raw_data/2003F.csv")
p2003 <- read_csv("data/raw_data/2003P.csv")
data2003 <- cbind(b2003[1:30, c("Tm", "BA")], f2003[1:30, c("DefEff")], p2003[1:30, c("ERA", "W")])



#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
