library(dplyr)
library(reshape2)

######################
### DOWNLOAD DATA ####
######################
download_data <- function(url, filename){
  download.file(url = url, destfile = paste0(filename, ".csv"))
}

url_listings <- "http://data.insideairbnb.com/belgium/vlg/antwerp/2021-02-25/visualisations/listings.csv"
url_reviews <- "http://data.insideairbnb.com/belgium/vlg/antwerp/2021-02-25/visualisations/reviews.csv"

download_data(url_listings, "listings")
download_data(url_reviews, "reviews")

write.csv(url_listings, "gen/data/url_listings.csv")
write.csv(url_reviews, "gen/data/url_reviews.csv")