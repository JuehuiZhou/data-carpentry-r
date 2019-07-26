install.packages("tidyverse")
library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")

view(interviews)
dim(interviews)  #size of the data
nrow(interviews)
ncol(interviews)
dim(interviews)[1]
dim(interviews)[1]==nrow(interviews)
interviews
head(as.data.frame(interviews))
tail(as.data.frame(interviews))

names(interviews)  #if you have got all the variables you want
str(interviews)
summary(interviews) #overview of each column mean, median ...

interviews[1,1]
interviews[1,6]
interviews[,1]
interviews[1]


1:3

interviews[1:3,7]
interviews[3,]
interviews[1:6,]

interviews[,-1]

interviews

interviews_no_id <- interviews[, -1]
interviews_no_id

interviews_100 <- interviews[100,]
n_rows <- nrow(interviews)

interviews_last <- interviews[n_rows,]
tail(interviews,n=1)

interviews_middle <- interviews[ceiling(n_rows/2),]
interviews_middle

interviews_head <- interviews[-(7:n_rows),]



