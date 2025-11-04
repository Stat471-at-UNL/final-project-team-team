# Install package to add file to .gitignore if not already installed
#install.packages("rcompendium")
library(rcompendium)

# URL to download NYC AirBNB listings
url <- "https://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2025-09-11/visualisations/listings.csv"
destination<- "Amsterdamlistings.csv"
download.file(url, destination)

# Add data to .gitignore
add_to_gitignore("Amsterdamlistings.csv")

# Data read
df <- read.csv("Amsterdamlistings.csv")
