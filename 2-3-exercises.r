#1. What is the sum of the first 100 positive integers?
#The formula for the sum of integers 1 through n is n(n+1)/2
#Define n= 100 and then use R to compute the sum of 1 through 100
#using the formula. What is the sum

n <- 100
n * (n + 1) / 2 
#space between arithmetic operators for good
#coding style per http://adv-r.had.co.nz/Style.html

#2. Now use the same formula to compute the sum of the 
#integers from 1 through 1,000.

n <- 1000
n * (n + 1) / 2 

#3.Look at the result of typing the following code into R:

n <- 1000
x <- seq(1, n)
sum(x)

#answer is 500500

#Based on the result, what do you think the functions seq 
#and sum do? You can use help.

#ans: b. seq creates a list of numbers and sum adds them up.

#4. In math and programming, we that that we "evaluate" a function
#when we replace the argument with a given number. So if we type
# sqrt(4), we evaluate the sqrt function. In R, you can evaluate a
#function inside another function. The evaluations happen from the
#inside out. Use one line of code to compute the log, in base 10, of
# the square root of 100.

log(sqrt(100), 10)

#5. Which of the following will always return the numeric value 
#stored in x?

#ans: c. log(exp(x)), log, base e is inverse function of exp