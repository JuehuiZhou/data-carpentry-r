library(ggplot2)
interviews_plotting <- read_csv("data_output/interviews_plotting.csv")

## ggplot(data=i<DATA>, mapping=aes(<MAPINGS>))+<GEOM_FUNCTION>()

ggplot(data = Interviews_plotting, aes(x=no_membrs, y=number_items)) +
  geom_point()

ggplot(data = Interviews_plotting, aes(x=no_membrs, y=number_items)) +
  geom_jitter(alpha=0.4)

ggplot(data = Interviews_plotting, aes(x=no_membrs, y=number_items)) +
  geom_jitter(alpha=0.4, color="blue")

ggplot(data = Interviews_plotting, aes(x=no_membrs, y=number_items)) +
  geom_jitter(alpha=0.4, aes(color = village))

ggplot(data = Interviews_plotting, aes(x=village, y=rooms)) +
  geom_jitter(aes(color = respondent_wall_type))

ggplot(data=Interviews_plotting,aes(x=respondent_wall_type, y=rooms))+ geom_boxplot()

ggplot(data=Interviews_plotting,aes(x=respondent_wall_type, y=rooms))+ geom_boxplot() +
  geom_jitter(alpha=0.5, color="tomato", witdth=0.2)

ggplot(data=Interviews_plotting,aes(x=respondent_wall_type, y=rooms)) + 
  geom_jitter(alpha=0.5, color="tomato", witdth=0.2)+
  geom_boxplot()
  
ggplot(data=Interviews_plotting,aes(x=respondent_wall_type, y=rooms)) + 
  geom_jitter(alpha=0.5, color="tomato", witdth=0.2)+
  geom_violin()

ggplot(data=Interviews_plotting,aes(x=respondent_wall_type, y=liv_count)) + 
  geom_jitter(alpha=0.5, color="tomato", witdth=0.2)+
  geom_boxplot(alpha=0)

ggplot(data=Interviews_plotting,aes(x=respondent_wall_type, y=liv_count)) + 
  geom_jitter(alpha=0.5, witdth=0.2, aes(color=memb_assoc), height = 0.2)+
  geom_boxplot(alpha=0)

ggplot(Interviews_plotting,
       aes(x=respondent_wall_type))+
  geom_bar()

ggplot(Interviews_plotting,
       aes(x=respondent_wall_type))+
  geom_bar(aes(fill=village))

ggplot(Interviews_plotting,
       aes(x=respondent_wall_type))+
  geom_bar(aes(fill=village), position = "dodge")

ggplot(Interviews_plotting,
       aes(x=respondent_wall_type))+
  geom_bar(aes(fill=village), position = "dodge")+
  labs(x="wall Type", y="count")+
  facet_grid(memb_assoc~village) +
  theme(axis.text = element_text(angle = 90))

p<-ggplot(Interviews_plotting,
          aes(x=respondent_wall_type))+
  geom_bar(aes(fill=village), position = "dodge")+
  labs(x="wall Type", y="count")+
  facet_grid(memb_assoc~village) +
  theme(axis.text = element_text(angle = 90))

