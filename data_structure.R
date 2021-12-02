# Print
print('Hello')

# Message (same as Print)
message("hi how are you")

# Concatenate String
cat("Good evening", "my friends")

x = 10
cat("value = ", x)

message("value = ", x)

# You cannot print string with numeic, it will not show in screen
print("value", x)

# To solve this, You can do this:
print(cat('value = ', x))

# Or this:
print(paste('value = ', x))

# Scan input
# This will scan unlimited values until you stop it
scan()

# Scan values and store to a variable
y = scan()
# If you enter non values in the line, it will give error.

y = scan()

# Read 3 values as Characters into Variable X
x = scan(n = 3, what = character())
# Warning: It won't accept spaces!

# Read sentences
readline("Enter your address:")

# Read sentences and save to add variable
add = readline("Enter your address:")
# Remember, it read sentences and convert it as Characters

# Read sentence and convert the value to Numeric
value1 = as.numeric(readline("Value 1:"))


# Vector
# Concatenate
v1 = c(1, 2, 435, 56, 34, 2, 3); v1

# Repeat
v2 = 1:10; v2

# Sequence generation
v3 = seq(1, 5); v3

v4 = seq(10, 15); v4
# It will NOT start 10 to 15, because starting point is not specified

v5 = seq(100, 115); v5

v6 = seq(100, 115, 4); v6
# Last number 115 will not appear because it is outside range

v6a = rep("hello", 5); v6a

v7 = rep("%%", 5); v7

# No need to follow argument sequences if parameter name is specified.
v8 = rep(times = 6, x = '$'); v8

v8a = rep(times = 6, x = FALSE); v8a

# Random
# 
v9 = sample(1:100,20); v9

v9a = sample(1:100,20, T); v9a

v9b = sample(1:100,50, T); v9b

# Numeric with Decimal (Used when we run uniform distributions)
v10 = runif(20,0,100); v10

# Numeric as Integer
v10a = as.integer(runif(20,0,100)); v10a

# Table (to group elements together as frequencies)
table(v10a)

# Random with repeated values from a certain concatenated Characters
v11 = sample(c("PJ", "Klang", "Shah Alam", "Batu Caves", "Puchong", "Damansara"), 20, T); v11
table(v11)


# Try to create a vector with multiple data types, it will try convert to other values
v12 = c(1,2,30,"Peter", TRUE); v12

# True and False will get converted to 1 and 0
v13 = c(1,23,34,T,T,F,100,F); v13


# Dissecting object's information
class(v13)
str(v13)
length(v13)

# Aggregation function (like SQL) from R.Stats Package
summary(v13)
mean(v13)
max(v13)
min(v13)
sum(v13)

# Direct calculate vector values
v13/10
v13^2
sqrt(v13)

# Retrieve values from Vector (index starts from 1)
v10
v10[16] # Specific location
v10[c(1,10,15,5,13)] # Dedicated locations
v10[2:5] # Certain Range
v10 > 50
v10[v10 > 50] # T will be retrieved

# Negations
v10[-19] # Specific location is negated
v10[-length(v10)] # Last value is negated
v10[-c(1,15,20)] # T will be negated

# Vector: Update values
v10a
v10a[v10a < 50]

# Increase T to 20%
v10a[v10a < 50] * 1.5

# You cannot do this as F elements will be gone, v10a is overwritten with new array with new values
v10a = v10a[v10a < 50] * 1.5

# Even you are doing this, it will not work as expected.
v10a[v10a < 50] = v10a[v10a < 50] * 1.5

# Add more values to an existing Vector
v12

# Existing array with repetitions
v12 = c(v12, rep("done", 4))
v12

v12 = v12[-c(4:5)]
v12

# Vector add with another Vector
v3+v4
v3
v4
# Result: Can, but the array will recycle values from beginning

# Find and replace value of a certain element of Vector

# For example: v10[10] <- 34

x[-1] = 5 # Other than first element, other values are turned to 5.

# If you access element that is not in length of Vector, an error will be returned.

# Give every element of Vector a name
x
names(x)

# Assign
names(x) = c('A', 'B', 'C')

# Call element with name
x['A']

# Call element with names specifically
x[c('A', 'C')]

# It will still recognize the index
x[2]

# Get Vector elements from 2nd Index to last element
v10a[2:length(v10a)]

# Scenario
class(v10)
v10
# It will not work
v10[v10==3] = v10[v10 == 3] + 5
# Remember you cannot do calculations with Logical and Characters, the program will return error.

# Concatenate 2 Vectors to another Variable
v15 = c(v4,v5)

# Create Matrices
m1 = matrix(1:6,3,2); m1

m2 = matrix(1:10,nrow=2,ncol=5,T); m2

m3 = matrix(1:10,ncol=5,nrow=2,T); m3

m3a = matrix(1:10,byrow=TRUE,ncol=5,nrow=2); m3a

# Remember byrow by default is FALSE

m3a[6] # Because byrow is TRUE, it will search vertically from left to right.

m3a[2,4] # Specific location MATRICE_NAME(ROW_INDEX, COLUMN_INDEX)

m3a[2,] # Specific row

m3a[,5] # Specific column

m3a = m3a * 100

m3b = rbind(m1,m3) # Cannot combine 2 matrix with different dimensions.

m3b = rbind(m2,m3)

m1a = rbind(m1,c(-12,-13)) # Correct dimensions.

m4 = cbind(m3b,m1a); m4 # Column bind

m4[3,4:6] # Static Row but with a range of columns

m4[,c(3,1,7)] # Taking multiple columns

m4[,c(3,1,7)] # Taking both range of rows and columns

m4[-c(3,4),1:5] # Taking all rows with specific exceptions, then take a range of columns

t(m4) # Transpose a matrix

length(m4) # Check number of elements in the matrices

dim(m4) # Find out the Number of Rows and Columns

summary(m4) # Find out all sorts of calculations

rowSums(m4) # Sum of the rows

colMeans(m4) # Mean of the Columns

apply(m4,1,max) # 1->row # Find Max of Rows in m4 Matrices

apply(m4,2,sum) # 2->column # Find Sum of Column in m4 Matrices

# Remember apply(...), the 2nd argument, MARGIN has 3 values, which are 1/2/c(1,2)
# 1 means Columns
# 2 means Rows
# c(1,2) means both Columns and Rows

# Give naming to the columns
colnames(m4) = c('a', 'b', 'c', 'd', 'e', 'f', 'g')
m4 # Show the column names
m4[,'d'] # Find the row with given column name


m5 = matrix(c(10,12),1,2)
m5
m1+m5 # Cannot perform addition between Matrices, because dimensions is not correct.

m6 = matrix(c(100,120),1,2)

m5+m6

# Week 2 Tutorial: Question 4 (To test it out)
V1 = seq(122,130,2); V1
V2 = c(rep(T,4),rep(F,3)); V2
V3 = rep('Welcome',4); V3
V4 = 15:20; V4
V5 = c('T','F','20','21','23', '24','Welcome','meet up'); V5

V5 = c('T','F',20:24,'Welcome','meet up'); V5 # CANNOT, SHE MISSED 22 for Purpose

# Question 5
# a.	Extract values 124-128 from vector, V1.
V1[c(124:128)];

# b.	Change the V3 to “Welcome”, “Good morning”, “Welcome”, “Good morning”
V3[c(2,4)] = 'Good morning'; V3

# c.	Update the V4 values to 150,160,170,180,190,200 <-- Updated
V4 = V4  * 10; V4

# Question 6
# a.	A 3X4 matrix with random generate values between 10-30.
M6 = matrix(sample(c(10:30), 12),nrow = 3, ncol = 4); M6

# b.	A 2X3 matrix with to store values 1-6.
M6a = matrix(1:6,nrow = 2, ncol = 3); M6a

# Question 7
# Use the matrices created from Q6.
# a.	Add a new column with any data of your choice into the 2X3 matrix.
M6 = cbind(M6, c(99,99,99)); M6

# b.	Multiply the content of the 2X3 matrix with 3
M7 = M6 * 3; M7

# c.	Add both matrices together 
M8 = M6 + M7; M8

# d.	Find the total sum for each column. 
apply(M8, 2, sum)

# List
v1 = 1:10
m1 = matrix(sample(1:10,6,T),2,3)
v2 = rep(F,5)
v3 = seq(1000,1500,1000)
l1 = list(v1,m1,m1*100,"Hi how are you"); l1
l2 = list(e1=50:55,e2=rep("a",3),e3=v2,e4=v3); l2

# Extract list elements
l1[[2]] # Get l1's 2nd element.

l1[[2]][2,3] # Get l1's 2nd element and get nested element is Matrice so I access row 2 column 3

l1[2][2,3] # Cannot because you haven't specify to enter it's nested element.


l1[[2]] = l1[[2]] / 2; l1 # Update a certain element in List

l2[[1]]
l2$e1 # Access with dollar sign ($)
l2$e1[4] # Access with dollar sign ($) and get value of it's nested element

l2$e3[2:4] = T # Update the internal element's (Vector) values
l2

# Set List elements with Names
names(l1) = c('ele1', 'ele2', 'ele3', 'ele4')
l1$ele4

# List within a list
l3 = list(v1, "done",l1)
l3
l3[[3]][[3]][2,2]








