import numpy as np
# random decimal number between 1 and 10
a = np.random.uniform(1,10)

------------------------------------------

# a 20 random decimal number between 1 and 10
b = np.random.uniform(1,10,20)

------------------------------------------

# List of 3 of random numbers between 0 & 1
a = np.random.random(3)
or
a = np.random.rand(3)

------------------------------------------

# matrix of 2X3 of random numbers between 0 & 1
a = np.random.random((2,3))
or 
a = np.random.rand(5,3)

------------------------------------------

# matrix of 2X3X4 of random numbers between 0 & 1
a = np.random.random((2,3,4))
or
a = np.random.rand(5,3,2)

------------------------------------------

# Normal Distribution of 10 numbers between 0 & 1
a = np.random.normal(0,1,10)

------------------------------------------

# random integer between 0 & 150
a =  np.random.randint(150)

------------------------------------------

# list of 7 numbers between 0 & 5
a = np.random.randint(5, size=7)
# [0 1 3 1 0 3 2]

------------------------------------------

# list of 7 numbers between 5 & 20
a = np.random.randint(5,20, size=7)
# [ 6  6  7  6  8 17 15]

------------------------------------------

# Matrix of 3X3 of numbers between 0 & 10
a = np.random.randint(0, 10, (3, 3))

[[8 1 5]
 [9 8 0]
 [0 6 2]]

------------------------------------------

# Matrix of 2X3X4 of numbers between 5 & 10

a = np.random.randint(5,10, size=(2, 3, 4))

[[[5 8 8 8]
  [5 9 8 7]
  [5 6 6 6]]

 [[5 7 5 7]
  [6 6 9 6]
  [7 6 9 8]]]

------------------------------------------

# 25 random numbers between 1 , 60 then reshaped 
a = np.reshape(np.random.randint(1,60,25),(5,5))
a = np.random.randint(1,60,25).reshape(5,5) # same

[[17 41 54 49 29]
 [28 18 51  4 43]
 [57 42 18 45 48]
 [ 6 57 47 40 23]
 [34 43 28 52 45]]

------------------------------------------

# select a one random choice
y=[1,2,3,6,9,8,5,4,7,8,9,6,5,9,6]
a = np.random.choice(y)

------------------------------------------

# select 5 random choice
y=[1,2,3,6,9,8,5,4,7,8,9,6,5,9,6]
a = np.random.choice(y, size = 5)
print(a)

------------------------------------------

# make shuffling for the list
y=[1,2,3,6,9,8,5,4,7,8,9,6,5,9,6]
print(y)
np.random.shuffle(y)
print(y)