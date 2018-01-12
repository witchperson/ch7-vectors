# Exercise 4: functions and conditionals

# Define a function `IsTwiceAsLong` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
IsTwiceAsLong <- function(str1, str2) {
  diff <- abs(nchar(str1) - nchar(str2))
  min.length <- min(nchar(str1), nchar(str2));
  return(diff >= min.length) # if difference is more than short
}

# Call your `IsTwiceAsLong` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
IsTwiceAsLong('dog','elephant')
IsTwiceAsLong('elephant','dog')
IsTwiceAsLong('dog','cat')



# Define a function `DescribeDifference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
DescribeDifference <- function(first,second) {
  diff <- nchar(first) - nchar(second)
  if(diff > 0) {
    sentence <- paste('Your first string is longer by', diff, 'characters')
  } else if(diff < 0) {
    sentence <- paste('Your second string is longer by', -diff, 'characters')
  } else {
    sentence <- 'Your strings are the same length!'
  }
  return(sentence)
}

# Call your `DescribeDifference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
DescribeDifference('dog','elephant')
DescribeDifference('elephant','dog')
DescribeDifference('dog','cat')