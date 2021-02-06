#define the variables
print("hello world")
a <- 1
b <- 1
c <- -1

# compute and print the solution

print((-b + sqrt(b**2 - 4*a*c)) / (2*a))

print((-b - sqrt(b**2 - 4*a*c)) / (2*a))

save("quadratic-formula.rda")

# wrote this to practice code with quadratic formula