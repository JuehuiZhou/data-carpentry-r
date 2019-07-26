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

floor_type <- factor(c("earth","cement","cement","earth"))
levels(floor_type)
nlevels(floor_type)
## reordering
floor_type <- factor(c("earth","cement","cement","earth"),
                     levels=c("earth","cement"))

levels(floor_type)[2] <- "brick"
levels(floor_type)

as.character(floor_type)

year_fct <- factor(c(1990,1983,1977,1998,1990))
as.numeric(year_fct)
as.character(year_fct)
as.numeric(as.character(year_fct))

levels(year_fct)
levels(year_fct)[year_fct]
as.numeric(levels(year_fct))[year_fct]
year_nmb <- as.numeric(levels(year_fct))[year_fct]
table(year_nmb)
table(year_fct)
summary(year_fct)

affect_conflicts <- interviews$affect_conflicts
affect_conflicts <- as.factor(affect_conflicts)

plot(affect_conflicts)

affect_conflicts <- interviews$affect_conflicts
affect_conflicts[is.na(affect_conflicts)]
affect_conflicts[is.na(affect_conflicts)] <- "undetermined"

affect_conflicts <- as.factor(affect_conflicts)
plot(affect_conflicts)

levels(affect_conflicts)[2]<- "more than once"
affect_conflicts<-factor(affect_conflicts, levels=c("never","once","more than once","frequently","undetermined"))
plot(affect_conflicts)
