# create  s3 object

car <- list(make="Toyota",year=2020)

class(car) <- "car"

print(car)


# create s4 object
setClass(
  "Person",
  slots = c(
    name = "character",
    age = "numeric"
  )
)


person1 <- new ("Person",name = "John", age = 25)

