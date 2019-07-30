#load required packages
#install.packages("tidyverse")
library(tidyverse)

print("Hello, world")
      
area_hectares <- 1.0
1.0 -> area_hectares

area_hectares <- 2.5               # land area in hectares
area_acres <- 2.47 * area_hectares # covert to acres
area_acres                         #print

lenth <- 5
width <- 2
area <- lenth * width
area

# b <- sqrt(x = a)

round(3.14159, digits = 2)


no_numbers <- c(3,7,10,6)
no_numbers
length(no_numbers)
class(no_numbers)

respondent_wall_type <- c("muddaub","burntbricks","sunbricks")
length(respondent_wall_type)
class(respondent_wall_type)
str(respondent_wall_type)

possessions <- c("bicycle","radio","television")
possessions <- c(possessions, "mobile_phone")      #add another element to vector
possessions <- c("car",passessions)

num_char <- c(1,2,3, "a")
num_logical <- c(1,2,3,TRUE)
char_logical <- c("a","b","c",TRUE)
tricky <- c(1,2,3,"4")

combine_logical <- c(num_logical,char_logical)

# subseting

respondent_wall_type[2]
respondent_wall_type[c(3,2)]


more_respondent_wall_type <- respondent_wall_type[c(1,2,3,2,1,3)]

no_numbers[c(TRUE,FALSE,TRUE,TRUE)]
no_numbers[no_numbers > 5]

no_numbers[no_numbers <3 | no_numbers>5]
no_numbers[no_numbers >=7 & no_numbers == 3]

possessions[possessions=="car"|possessions=="bicycle"]
possessions[possessions %in% c("car","bicycle")]
rooms <- c(2,1,NA,4)
mean(rooms)
max(rooms)
mean(rooms, na.rm = TRUE)
!is.na(rooms)   #! makes a opposite choice
rooms[!is.na(rooms)]
library(tidyverse)
library(lubridate)

interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")

