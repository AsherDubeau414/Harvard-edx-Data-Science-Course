library(dslabs)
data(murders)

#1. Use the $ operator to access the population size data and store 
#it as the object pop. Then use the sort function to redefine pop so 
#that it is sorted. Finally, use the [ operator to report the 
#smallest population size.

#added this just to see state abb with population value
x <- murders$abb
y <- murders$population

y #checking code

pop <- sort(y)
pop[1]

#2. Now instead of the smallest population size, find the index of 
#the entry with the smallest population size. Hint: use order 
#nstead of sort.

index1 <- order(y)
index1[1]

#3. We can actually perform the same operation as in the previous 
#exercise using the function which.min. Write one line of code that 
#does this.

which.min(murders$population)
#> 51

#4. Now we know how small the smallest state is and we know which 
#row represents it. Which state is it? Define a variable states to 
#be the state names from the murders data frame. Report the name 
#of the state with the smallest population.

states <- murders$state
states[which.min(murders$population)]
#>Wyoming

#5. You can create a data frame using the data.frame function. 
#Here is a quick example:

#temp <- c(35, 88, 42, 84, 81, 30)
#city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", 
          "San Juan", "Toronto")
#city_temps <- data.frame(name = city, temperature = temp)

#Use the rank function to determine the population rank of each 
#state from smallest population size to biggest. Save these ranks 
#in an object called ranks, then create a data frame with the state 
#name and its rank. Call the data frame my_df.

ranks <- rank(murders$population)
my_df <- data.frame(name = murders$state, ranks)
my_df

#6. Repeat the previous exercise, but this time order my_df so that 
#the states are ordered from least populous to most populous. 
#Hint: create an object ind that stores the indexes needed to order
#the population values. Then use the bracket operator [ to re-order
#each column in the data frame.


my_df <- data.frame(murders$population, murders$state)
indexdf <- my_df[order(murders$population, murders$state)]
indexdf

#7. The na_example vector represents a series of counts. You can 
#quickly examine the object using:

#data("na_example")  
#str(na_example)
#> int [1:1000] 2 1 3 2 1 3 1 4 3 2 ...

#However, when we compute the average with the function mean, we 
#obtain an NA:
  
#mean(na_example)
#> [1] NA

#The is.na function returns a logical vector that tells us which 
#entries are NA. Assign this logical vector to an object called 
#ind and determine how many NAs does na_example have.

data("na_example")
ind <- is.na(na_example)
mean(ind)

#8. Now compute the average again, but only for the entries 
#that are not NA. Hint: remember the ! operator.

mean(!ind)