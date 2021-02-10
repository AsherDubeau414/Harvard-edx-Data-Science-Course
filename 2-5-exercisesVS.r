#Exercises for section 2.5 of 
#Introduction to Data Science by Rafael A. Irizarry

#1. Load the US murders dataset.

library(dslabs)
data(murders)
#Use the function str to examine the structure of the murders object.
#Which of the following best describes the variables represented in 
#this data frame?
  
# A)The 51 states.
# B)The murder rates for all 50 states and DC.
# C)The state name, the abbreviation of the state name, 
   #the state’s region, and the state’s population and 
   #total number of murders for 2010.
# D)str shows no relevant information.

str(murders)

# answer is C

#2. What are the column names used by the data 
#frame for these five variables?
names(murders)
#> "state" "abb" "region" "population" "total"

#3. Use the accessor $ to extract the state abbreviations and 
#assign them to the object a. What is the class of this object?

a <- murders$abb
class(a)

#> "character"

#4. Now use the square brackets to extract the state abbreviations 
#and assign them to the object b. Use the identical function to 
#determine if a and b are the same.

b <- murders[["abb"]]
identical(a,b)

#> a and b are identical

#5. We saw that the region column stores a factor. You can
#corroborate this by typing:

class(murders$region)
# With one line of code, use the functions levels and length 
#to determine the number of regions defined by this dataset.

length(levels(murders$region))

#> 4

#6. The function table takes a vector and returns the frequency 
#of each element. You can quickly see how many states are in 
#each region by applying this function. Use this function in 
#one line of code to create a table of states per region.

table(murders$region)
#> Northeast         South    North Central      West 
#>        9            17            12            13 