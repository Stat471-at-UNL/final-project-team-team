#<<<<<<< HEAD
# Install package to add file to .gitignore if not already installed
#install.packages("rcompendium")
library(rcompendium)

# URL to download NYC AirBNB listings
url <- "https://data.insideairbnb.com/united-states/ny/new-york-city/2025-10-01/visualisations/listings.csv"
destination<- "NYClistings.csv"
download.file(url, destination)

# Add data to .gitignore
add_to_gitignore("NYClistings.csv")

# Data read
df <- read.csv("NYClistings.csv")
#=======
# Install package to add file to .gitignore if not already installed
#install.packages("rcompendium")
library(rcompendium)

# URL to download NYC AirBNB listings
url <- "https://data.insideairbnb.com/united-states/ny/new-york-city/2025-10-01/data/listings.csv.gz"
destination<- "NYClistings.csv"
download.file(url, destination)

# Add data to .gitignore
add_to_gitignore("NYClistings.csv")

# Data read
df <- read.csv("NYClistings.csv")
# >>>>>>> 0c5cacd4b040326fc08558e01267ea6acb89fd55
