# Install packages
install.packages("tidyverse")
install.packages("rjson")

# Load packages
library(jsonlite)
library(tidyverse)


# Get the JSON file
file_json <- fromJSON("https://jsonplaceholder.typicode.com/comments")
head(file_json)

# Fetch the first 20 elements
new_json <- head(file_json, 20)
View(new_json)


# Add a random number between 0 and 100 to the data frame as "view"
df_range <- c(0:100)
json_required <- new_json %>% rowwise %>% mutate(view = sample(df_range, 1))
View(json_required)

write.csv(json_required, "C:\\Users\\hp\\Documents\\cypher_json\\json_required.csv", row.names = FALSE)
