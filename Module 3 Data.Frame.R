# Module 3 Dataframe

#Libraries
library(tidyverse)

#Load in Dataframe
Polls <- data.frame(
  Name = c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie"),
  ABC_poll = c(4,62,51,21,2,14,15),
  CBS_poll = c(12,75,43,19,1,21,19)
)

# Structure of dataframe
str(Polls)

#View dataframe
Polls

# Get average Scores by Candidate
Polls_long <- Polls |> 
  pivot_longer(cols = ends_with("poll"),
               names_to = "Poll",
               values_to="Score")
  Polls_long |> 
    group_by(Name) |> 
    summarize(avg_score = mean(Score))

# Get average score by Poll
  Polls_long |> 
    group_by(Poll) |> 
    summarize(avg_score = mean(Score))
  
