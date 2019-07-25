install.packages("tidyverse")
library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")

view(interviews)
