install.packages("rcompendium")
library(rcompendium)

url <- "https://data.insideairbnb.com/united-states/ny/new-york-city/2025-10-01/visualisations/listings.csv"

destination<- "NYClistings.csv"

download.file(url, destination)

add_to_gitignore("NYClistings.csv")
