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
           
interviews
interviews %>%
  group_by(village) %>%
  summarise(mean_no_membrs = mean(no_membrs))

interviews %>%
  filter(!is.na(memb_assoc))%>%
  group_by(village, memb_assoc) %>%
  summarise(mean_no_membrs = mean(no_membrs))

interviews %>%
  filter(!is.na(memb_assoc))%>%
  group_by(village, memb_assoc) %>%
  summarise(mean_no_membrs = mean(no_membrs), min_membrs =min(no_membrs))

interviews %>%
  filter(!is.na(memb_assoc))%>%
  group_by(village, memb_assoc) %>%
  summarise(mean_no_membrs = mean(no_membrs), min_membrs =min(no_membrs))%>%
  arrange(min_membrs)

interviews %>%
  filter(!is.na(memb_assoc))%>%
  group_by(village, memb_assoc) %>%
  summarise(mean_no_membrs = mean(no_membrs), min_membrs =min(no_membrs))%>%
  arrange(desc(min_membrs))

interviews%>%
  count(village)

interviews%>%
  count(village,sort=TRUE)

interviews%>%
  group_by(village)%>%
  summarise(
    mean_no_membrs=mean(no_membrs), 
    min_membrs=min(no_membrs),
    max_membrs=max(no_membrs), 
    n=n()
    )

interviews_spread <- interviews%>%
  mutate(wall_type_logical=TRUE) %>%
  spread(key=respondent_wall_type, value = wall_type_logical, fill = FALSE)

view(interviews_spread)

interviews_gather <- interviews_spread%>%
  gather(key="respondent_wall_type", value = "wall_type_logical",burntbricks:sunbricks)
view(interviews_gather)

interviews_gather <- interviews_spread%>%
  gather(key="respondent_wall_type", value = "wall_type_logical",burntbricks:sunbricks)%>%
  filter(wall_type_logical)%>%
  
view(interviews_gather)






