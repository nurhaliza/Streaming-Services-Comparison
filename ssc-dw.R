# environment used: rstudio - language: r

# libraries needed
library(tidyverse) 
library(ggplot2)

# saving all datasets to corresponding data names 
amazon <- read_csv("/Users/nurhalizahassan/Desktop/Streaming-Services-Comparison/Datasets/amazon_prime_titles.csv")
disney <- read_csv("/Users/nurhalizahassan/Desktop/Streaming-Services-Comparison/Datasets/disney_plus_titles.csv")
hulu <- read_csv("/Users/nurhalizahassan/Desktop/Streaming-Services-Comparison/Datasets/hulu_titles.csv")
netflix <- read_csv("/Users/nurhalizahassan/Desktop/Streaming-Services-Comparison/Datasets/netflix_titles.csv")

# observations so far ...
# 1) each dataset has 12 variables that have the same names - 11 (chr), 1 (double)
# command: names(dataset)
# 2.a) variables that contain NA/missing values (total - 5): director, cast, country, date_added, rating 
# 2.b) variables that do not (total - 7): show_id, type, title, release_year, duration, listed_in, description
# command: which(is.na(dataset$variable))

# considerations for the approach in the data wrangling process ... 
# 1) remove NA values? or just leave them depending on what is to be focused on
# 2.a) all datasets have the same variables, combining them into one comprehensive dataset may not be optimal as it can be confusing
# 2.b) however, if I were to add another column called streaming_service that will contain whether it is 
# 2.c) amazon, disney, hulu or netflix ..  it might just work out but it will indeed be a very lengthy dataset
# 3.a) objective (1): can look into what content is available in different countries and what is popular in terms of director, cast, and rating
# 3.b) objective (2): can see what shows/movies are across on all platforms and which ones that are not
# 3.c) objective (3): can look at individual platforms and see what each platform's focus is in terms of whether it is more show or movie heavy
# 3.d) objective (4): can list out popular v. not popular shows/movies for each year
# 4) can probably start analyzing each individual dataset with the listed objectives in mind and then ease into an overall dataset with the listed objectives in mind