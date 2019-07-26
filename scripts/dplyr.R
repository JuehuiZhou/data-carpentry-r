library(dplyr)
library(tidyr)
interviews<-read.csv("data/SAFI_clean.csv",na="NULL")

select(interviews,village,no_membrs,years_liv)
filter(interviews, village=="God")
filter(interviews,village=="God",no_membrs > 6)
god_data <- filter(select_cols, village =="God",no_membrs >6)
interviews %>% 
  select(village, no_membrs, years_liv)%>%
  filter(village=="God",no_membrs>6)
interviews %>%
  filter(memb_assoc=="yes") %>%
  select(affect_conflicts,liv_count,no_meals)

interviews %>%
  mutate(people_per_room = no_membrs/rooms)
interviews_ppl_room <-interviews %>%
  mutate(people_per_room = no_membrs/rooms)
view(interviews_ppl_room)

interviews_ppl_room <-interviews %>%
  mutate(people_per_room = no_membrs/rooms)

total_meals <- interviews %>%
  mutate(total_meals = no_membrs*no_meals)%>%
  filter (total_meals>20) %>%
  select(village, total_meals)
           
