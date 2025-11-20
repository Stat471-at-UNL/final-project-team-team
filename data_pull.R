# Install package to add file to .gitignore if not already installed
#install.packages("rcompendium")
library(tidyverse)
library(readxl)

if (file.exists("NYClistings.csv")) {
  # Data read
  df <- read.csv("NYClistings.csv")
} else {
  # URL to download NYC AirBNB listings
  url <- "https://data.insideairbnb.com/united-states/ny/new-york-city/2025-10-01/visualisations/listings.csv"
  destination<- "NYClistings.csv"
  download.file(url, destination)

  # Add data to .gitignore
  add_to_gitignore("NYClistings.csv")

  # Data read
  df <- read.csv("NYClistings.csv")
}

df <- read_csv("listings.csv.gz")
