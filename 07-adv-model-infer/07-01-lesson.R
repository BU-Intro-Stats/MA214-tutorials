# TODO: remake into Rmd file with boxes and math for the exercises

library(ggplot2)

# Load data
icecream <- read.csv("icecream.csv")

# Explore the relationship between variables
# Exercise 1a-c: Create scatterplots
# Solution:
ggplot(data=icecream, aes(y=cons, x=temp)) +
  geom_point()

ggplot(data=icecream, aes(y=cons, x=price, col=temp)) +
  geom_point()

ggplot(data=icecream, aes(y=cons, x=income, col=temp)) +
  geom_point()

# Exercise 2a-c: How would you describe the relationship between each of the
# variables above? (Positive/negative/no corr.; linear/non-linear; strong/weak)
# TODO: Solution

# Exercise 3: Write by hand a linear model for this problem, with the variables
# explored above. Use beta's as needed for the model parameters, and state 
# clearly which variables you're using and how you're naming them.
# TODO: Solution

# Exercise 4: Implement the model in R using the lm() function
# Solution:
m1 <- lm(data=icecream, cons ~ income + price + temp)
summary(m1)

#
# TODO Exercise 5: (Recreate exercise 3 in IMS interaction supp)
#

# Exercise 6: Implement a new model with interaction between income and price
# Solution:
m2 <- lm(data=icecream, cons ~ income + price + temp + income:price)
summary(m2)

# Exercise 7: Write out by hand the model summarized above
# TODO: Solution

# TODO Exercise 8: (Rewrite Exercise 6 in IMS interaction supp)
# TODO: Solution
