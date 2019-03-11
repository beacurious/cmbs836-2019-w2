#    ___       _               _          ____  
#   |_ _|_ __ | |_ _ __ ___   | |_ ___   |  _ \ 
#    | || '_ \| __| '__/ _ \  | __/ _ \  | |_) |
#    | || | | | |_| | | (_) | | || (_) | |  _ < 
#   |___|_| |_|\__|_|  \___/   \__\___/  |_| \_\
#                                               

3 + 5
12 / 7

# Creating Objects in R

weight_kg <- 55

weight_kg <- 55    # doesn't print anything
(weight_kg <- 55)  # but putting parenthesis around the expression prints the value of `weight_kg`
weight_kg          # and so does typing the name of the object

2.2 * weight_kg

weight_kg <- 57.5
2.2 * weight_kg

weight_lb <- 2.2 * weight_kg
weight_kg <- 100

# Comments

# Challenge
# 
# What are the values after each statement in the following?
# 
# mass <- 47.5            # mass?
# age  <- 122             # age?
# mass <- mass * 2.0      # mass?
# age  <- age - 20        # age?
# mass_index <- mass/age  # mass_index?

# Functions and Arguments

sqrt(2)
round(3.14159)

?round
args(round)

round(3.14159, digits = 2)
round(digits = 2, x = 3.14159)

# Vectors and Data Types

# Combine some values into a vector
glengths <- c(4.6, 3000, 50000)
glengths

species <- c("ecoli", "human", "corn")
species

length(glengths)
length(species)

5 * glengths

double_lengths <- glengths + glengths
double_lengths

class(glengths)
class(species)

str(glengths)
str(species)

lengths <- c(glengths, 90) # adding at the end
lengths <- c(30, glengths) # adding at the beginning
lengths

# and there Other types (beyond numeric and character)

sqrt_of_minus_one <- 1i
class(sqrt_of_minus_one)
true_or_false_value <- TRUE
class(true_or_false_value)
whole_number = 1L
class(whole_number)

str(complex_number)
str(logical_value)

# Challenge (optional)
#
# We’ve seen that atomic vectors can be of type character, 
# numeric, integer, and logical. 
#
# But what happens if we try to mix these types in a single vector?
#
# eg:
#
# thing <- c("some characters", 3.141, 100, TRUE)

# What will happen in each of these examples? 
#
# (hint: use class() to check the data type of your objects):
#   
#   num_char <- c(1, 2, 3, "a")
#   num_logical <- c(1, 2, 3, TRUE)
#   char_logical <- c("a", "b", "c", TRUE)
#   tricky <- c(1, 2, 3, "4")
#
# Why do you think it happens?

# How many values in combined_logical are "TRUE" (as a character)
# in the following example:
#   
#   num_logical <- c(1, 2, 3, TRUE)
#   char_logical <- c("a", "b", "c", TRUE)
#   combined_logical <- c(num_logical, char_logical)


#
# Subsetting vectors
#

animals <- c("mouse", "rat", "dog", "cat")
animals[2]
animals[c(3, 2)]

more_animals <- animals[c(1, 2, 3, 2, 1, 4)]
more_animals

# Conditional subsetting
weight_g <- c(21, 34, 39, 54, 55)
weight_g[c(TRUE, FALSE, TRUE, TRUE, FALSE)]

weight_g > 50
weight_g[weight_g > 50]

weight_g[weight_g < 30 | weight_g > 50]

weight_g[weight_g >= 30 & weight_g == 21]

animals <- c("mouse", "rat", "dog", "cat")
animals[animals == "cat" | animals == "rat"] # returns both rat and cat

animals %in% c("rat", "cat", "dog", "duck", "goat")
animals[animals %in% c("rat", "cat", "dog", "duck", "goat")]

# Challenge (optional)
#
# Can you figure out why "four" > "five" returns TRUE?


# Missing data (NA - Not Available)

heights <- c(2, 4, 4, NA, 6)
mean(heights)
max(heights)
mean(heights, na.rm = TRUE)
max(heights, na.rm = TRUE)

heights[!is.na(heights)]
na.omit(heights)

heights[complete.cases(heights)]

# Challenge
#
# Using this vector of heights in inches, create a new vector 
# with the NAs removed.
# 
#     heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
# 
# Use the function median() to calculate the median of the heights vector.
# 
# Use R to figure out how many people in the set are taller than 67 inches.

#
# Getting Help
#

help.search("average")
?mean
args(sqrt)
max
