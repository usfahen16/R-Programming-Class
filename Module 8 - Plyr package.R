# Module 8 - R Programming

# Libraries
# library(pylr) -- not available in R Aversion
library(data.table)
library(boot)
library(ISLR)
library(tidyverse)

# Load in data
student_data <- read.csv("C:\\Users\\alexh\\Downloads\\Assignment 6 Dataset.txt")

StudentAverage <- student_data |> 
  group_by(Sex) |> 
  summarize(Grade.Average =mean(Grade,na.rm=TRUE))

print(StudentAverage)



# Filter names that contain I and create new dataframe

filtered_data_i <- student_data |> 
  filter(grepl("i",Name,ignore.case = TRUE)) 

write.csv(filtered_data_i,"filtered_names.csv",row.names=TRUE)