# Factor
# Have a random sample
nationality = sample(c('Malaysian', 'Indonesian', 'Indian', 'China', 'Iranian', 'Japanese'), 50, T); nationality

# Frequency
table(nationality)

# Let's have another Vector and see the frequencies
age = sample(23:50,50,T); age
table(age)

# Create Factor
fac = factor(nationality); fac
# Factor will still remember the mappings of the nationality Vector.

# You may see unique() but its only showing the unique values, NOT really categorize them.
unique(nationality)

# Applying a Function to find out the min/max/mean of age of Factor variable.
tapply(age,fac,min)
tapply(age,fac,max)
tapply(age,fac,mean)

# Found out that tapply both vectors are still giving the same results.
tapply(age,nationality,max)

# When you have another vector of scores (with same size), you can perform tapply() too
score = sample(0:100, 50, T); score
tapply(score, fac, mean)
tapply(score, fac, max)
tapply(score, fac, min)

# Data frame

# Recreate the random values
nationality = sample(c('Malaysian', 'Indonesian', 'Indian', 'China', 'Iranian', 'Japanese'), 50, T); nationality
age = sample(23:50,50,T); age
Mathscore = sample(0:100, 50, T); Mathscore
Englishscore = sample(0:100, 50, T); Englishscore

# Create data frame
d1 = data.frame(nationality, age, Mathscore, Englishscore); d1

# Length of data frame is number of columns
length(d1)

# Number of columns in data frame
ncol(d1) 

# Number of rows in data frame
nrow(d1)

# Open a new tab to view the table
View(d1)

# Select specific
d1[1,] #row
d1[1,3] # value
d1["age"] # column (when name is assigned)
d1$age # access column with $ sign approach

# Add a new row
rbind(d1, list('Malaysian', 30,34,56))

# Add a new Column
cbind(d1, sample(1:100,51,T)) # Will not work if your column is changed.

# Add a new Column safely.
cbind(d1, HistoryScore = sample(1:100,nrow(d1),T))

# Delete a Column
d1$HistoryScore = NULL; names(d1)

names(d1) =  c('Nationality', 'Age', 'Math', 'English')

# Sort in a data frame (the coma needs to be there to signify you're finding a Row or Column)
d1[d1$Nationality == 'Malaysian',] # Entire Row for Malaysian
d1[d1$Nationality == 'Malaysian',3] # Entire Row for Malaysian, only get the 3rd column
d1[d1$Age < 25,3] # Malaysian who is less than 25 years old, only get the 3rd column.

# Sort in a data frame
d1[order(d1$Nationality),] # Sort row by $ approach
d1[order(d1[['Nationality']]),] # Sort row by [[]] approach
d1[order(d1[[1]]),] # Sort row by index
d1[order(d1$Nationality, decreasing = TRUE),] # Sort row by $ approach, descending
d1[order(d1$Nationality, d1$Age, decreasing = TRUE),] # Sort 2 rows by $ approach, descending
# (When sort with 2 columns, age will also is descending in every group of Nationality)

d1[order(d1$Nationality, -d1$Age),] # Sort 2 rows with nationality ascending, age descending with - sign

LETTERS[1:nrow(d1)]

# Quick Review Questions
# 1. matrix(), list(), data.frame(), vector(), factor()
# 2. Vector that has 12,45,60,80,99.
# V1 = c(12,45,60,80,99) # default is this answer
# 3. Built-in function for build categorical variable....
# factor()
# 4. Generate a random value from 1 to 100 (Keyword: a means only ONE)
# Use sample(). For example, v2 = sample(1:100); v2

StudentID = sample(1:10, 10);StudentID
StudentName = LETTERS[1:10];StudentName
Math = sample(0:100,10,T);Math
Science = sample(0:100,10,T);Science
Geography = sample(0:100,10,T);Geography
English = sample(0:100,10,T);English
IT = sample(0:100,10,T);IT

d2 = data.frame(StudentID, StudentName,Math,Science,Geography,English,IT);d2

# Students who has failed Math module
d2[d2$Math < 50,]

# New column remarks column, put 'resit' as value for those who failed the Math module.
d2
cbind(d2, remarks=sample('', nrow(d2),T))
remarks = d2$Math < 50;remarks

d2[d2$Math < 50,d2$remarks] = 'resit';d2

# Average mark of each student
d2
fac2 = factor(d2$StudentName)
specificrows = d2[3:ncol(d2)];specificrows

test = tapply(rowMeans(specificrows), fac2, mean);test

# Average mark of every module
MathMean = mean(d2$Math);MathMean
ScienceMean = mean(d2$Science);ScienceMean
GeagraphyMean = mean(d2$Geography);GeagraphyMean
EnglishMean = mean(d2$English);EnglishMean
ITMean = mean(d2$IT);ITMean

# Which student has highest average mark?






