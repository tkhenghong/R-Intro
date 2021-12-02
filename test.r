a = 10
sqrt(10)
z = a + 20

if (a > 5) {
  print('')
}

X <- 10
11 -> y
name = "John" # cahracters
name1 = 'James'
class(name)
status = F # Logical
active = TRUE
class(status)

price = 12.30 # Real value
class(price)
age = 21
class(age)
age2 = 21
class(age2)
rep(1,100)

# Convert a variable's value to something else
# Integer to Numeric
active2 = as.integer(active)
# Logical to Characters
status2 = as.character(status)

# List all variables in the environment.
ls()

# Remove a certain Variable in memory.
rm(y)

# Remove all variables in memory.
rm(list = ls())

# Check the loaded packages in memory
search()

# Check the loaded packages in your computer.
installed.packages()

# Install an R Package
install.packages("YOUR_PACKAGE_NAME")
#Example
install.packages("covid19sf")
install.packages("ggplot2")

# Run the R package
library(ggplot2)

# Unload an R Package from memory
detach("package:ggplot2")

# Remove an R package from your computer
remove.packages('covid19india')

