## Flashcard R Package
## This R package creates a simple flashcard program that allows users to input flashcards, study them, and track their results.

##This document will carry the functions that will eventually be used in my created package for the R programming class.

## Main Menu
## This is the swithcboard for all of the functions available in the package.
main_menu <- function() {
  repeat {
    choice <- menu(c("Add Flashcards", "Study Flashcards", "View Progress", "Exit"), title = "Flashcard Program Menu")
    switch(choice,
           add_flashcards(),
           study_flashcards(),
           view_progress(),
           break)
  }
}

## Flashcard Input
#This first function is used to enter in the flashcard data into a data frame for use later on.
flashcards <- function() {
  flashcards_data <- data.frame(
    question = character(),
    answer = character(),
    correct = integer(),
    total = integer(),
    stringsAsFactors = FALSE
  )

## Add Flashcards
## This function will allow the user to input flashcards for use.
  add_flashcards <- function() {
    repeat {
      question <- readline(prompt = "Enter the flashcard question (or press ENTER to stop adding): ")
      if (nchar(question) == 0) break

      answer <- readline(prompt = "Enter the flashcard answer: ")
      flashcards_data <<- rbind(flashcards_data, data.frame(question = question, answer = answer, correct = 0, total = 0, stringsAsFactors = FALSE))
    }
  }

## Study Flashcards
## This function allows user to study flashcards they input earlier
  study_flashcards <- function() {
    if (nrow(flashcards_data) == 0) {
      cat("No flashcards available to study. Please add some flashcards first.\n")
      return()
    }

    repeat {
      index <- sample(1:nrow(flashcards_data), 1)
      question <- flashcards_data$question[index]
      answer <- flashcards_data$answer[index]

      cat("Question: ", question, "\n")
      user_answer <- readline(prompt = "Your answer: ")

      if (tolower(user_answer) == tolower(answer)) {
        cat("Correct!\n\n")
        flashcards_data$correct[index] <<- flashcards_data$correct[index] + 1
      } else {
        cat("Incorrect. Correct answer is: ", answer, "\n\n")
      }
      flashcards_data$total[index] <<- flashcards_data$total[index] + 1

      choice <- readline(prompt = "Do you want to continue studying? (yes/no): ")
      if (tolower(choice) != "yes") break
    }
  }

## View Progress
## This function allows the user to view their progress.
  view_progress <- function() {
    if (nrow(flashcards_data) == 0) {
      cat("No flashcards available. Please add some flashcards first.\n")
      return()
    }

    cat("\nFlashcard Progress:\n")
    for (i in 1:nrow(flashcards_data)) {
      cat(sprintf("%s: %d correct out of %d attempts\n",
                  flashcards_data$question[i],
                  flashcards_data$correct[i],
                  flashcards_data$total[i]))
    }
    cat("\n")
  }

  main_menu()
}

