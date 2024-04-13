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
library(dplyr)
library(janitor)


#### Clean data ####
## Preparing yearly data ##
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
#2004
b2004 <- read_csv("data/raw_data/2004B.csv")
f2004 <- read_csv("data/raw_data/2004F.csv")
p2004 <- read_csv("data/raw_data/2004P.csv")
data2004 <- cbind(b2004[1:30, c("Tm", "BA")], f2004[1:30, c("DefEff")], p2004[1:30, c("ERA", "W")])
#2005
b2005 <- read_csv("data/raw_data/2005B.csv")
f2005 <- read_csv("data/raw_data/2005F.csv")
p2005 <- read_csv("data/raw_data/2005P.csv")
data2005 <- cbind(b2005[1:30, c("Tm", "BA")], f2005[1:30, c("DefEff")], p2005[1:30, c("ERA", "W")])
#2006
b2006 <- read_csv("data/raw_data/2006B.csv")
f2006 <- read_csv("data/raw_data/2006F.csv")
p2006 <- read_csv("data/raw_data/2006P.csv")
data2006 <- cbind(b2006[1:30, c("Tm", "BA")], f2006[1:30, c("DefEff")], p2006[1:30, c("ERA", "W")])
#2007
b2007 <- read_csv("data/raw_data/2007B.csv")
f2007 <- read_csv("data/raw_data/2007F.csv")
p2007 <- read_csv("data/raw_data/2007P.csv")
data2007 <- cbind(b2007[1:30, c("Tm", "BA")], f2007[1:30, c("DefEff")], p2007[1:30, c("ERA", "W")])
#2008
b2008 <- read_csv("data/raw_data/2008B.csv")
f2008 <- read_csv("data/raw_data/2008F.csv")
p2008 <- read_csv("data/raw_data/2008P.csv")
data2008 <- cbind(b2008[1:30, c("Tm", "BA")], f2008[1:30, c("DefEff")], p2008[1:30, c("ERA", "W")])
#2009
b2009 <- read_csv("data/raw_data/2009B.csv")
f2009 <- read_csv("data/raw_data/2009F.csv")
p2009 <- read_csv("data/raw_data/2009P.csv")
data2009 <- cbind(b2009[1:30, c("Tm", "BA")], f2009[1:30, c("DefEff")], p2009[1:30, c("ERA", "W")])
#2010
b2010 <- read_csv("data/raw_data/2010B.csv")
f2010 <- read_csv("data/raw_data/2010F.csv")
p2010 <- read_csv("data/raw_data/2010P.csv")
data2010 <- cbind(b2010[1:30, c("Tm", "BA")], f2010[1:30, c("DefEff")], p2010[1:30, c("ERA", "W")])

## Combining yearly data ##
mlb_10 <- rbind(data2000, data2001, data2002, data2003, data2004, data2005, 
                data2006, data2007, data2008, data2009, data2010) |> clean_names()

## Cleaning yearly data ##
current <- c("Arizona Diamondbacks", "Atlanta Braves", "Baltimore Orioles", 
             "Boston Red Sox", "Chicago Cubs", "Chicago White Sox", 
             "Cincinnati Reds", "Cleveland Indians", "Colorado Rockies", 
             "Detroit Tigers", "Florida Marlins", "Houston Astros", 
             "Kansas City Royals", "Los Angeles Angels", "Los Angeles Dodgers", 
             "Milwaukee Brewers", "Minnesota Twins", "New York Mets", 
             "New York Yankees", "Oakland Athletics", "Philadelphia Phillies", 
             "Pittsburgh Pirates", "San Diego Padres", "San Francisco Giants", 
             "Seattle Mariners", "St. Louis Cardinals", "Tampa Bay Rays", 
             "Texas Rangers", "Toronto Blue Jays", "Washington Nationals", 
             "Montreal Expos", "Tampa Bay Devil Rays",
             "Los Angeles Angels of Anaheim", "Anaheim Angels")
change <- c("AZ", "ATL", "BAL", "BOS", "CHC", 
           "CWS", "CIN", "CLE", "COL", "DET", 
           "MIA", "HOU", "KC", "LAA", "LAD", 
           "MIL", "MIN", "NYM", "NYY", "OAK", 
           "PHI", "PIT", "SD", "SF", "SEA",
           "STL", "TB", "TEX", "TOR", "WSH", 
           "WSH", "TB", "LAA", "LAA")
mlb_10$tm <- ifelse(mlb_10$tm %in% current, 
                  change[match(mlb_10$tm, current)], 
                  mlb_10$tm)
mlb_data <- mlb_10

#### Save data ####
write_csv(mlb_data, "data/analysis_data/mlb_data.csv")
