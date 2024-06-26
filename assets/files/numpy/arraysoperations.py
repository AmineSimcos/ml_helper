# check how much numbers are close

a = np.random.randint(5,20, size=9).reshape(3,3)
b = np.random.randint(5,20, size=9).reshape(3,3)

d = np.isclose(a,b,rtol = 0.1)

array([[False, False, False],
       [False, False, False],
       [ True, False, False]])

------------------------------------------

# Matrices Multiplication
a = np.random.randint(5,20, size=9).reshape(3,3)
np.multiply(a, 10)

array([[180, 180,  60],
       [ 60,  80,  60],
       [180, 170,  70]])

------------------------------------------

# Matrices Power
a = np.random.randint(5,20, size=9).reshape(3,3)
np.power(a, 4)

------------------------------------------

# sum of each column

a = np.arange(9).reshape(3,3)
print(a)
np.add.reduce(a)

[[0 1 2]
 [3 4 5]
 [6 7 8]]
array([ 9, 12, 15])

------------------------------------------

# Multiply of each column

a = np.arange(9).reshape(3,3)
print(a)
np.multiply.reduce(a)

[[0 1 2]
 [3 4 5]
 [6 7 8]]
array([ 0, 28, 80])

------------------------------------------

# accumlate each row over below one

a = np.arange(9).reshape(3,3)
print(a)
np.add.accumulate(a)

[[0 1 2]
 [3 4 5]
 [6 7 8]]
array([[ 0,  1,  2],
       [ 3,  5,  7],
       [ 9, 12, 15]], dtype=int32)

------------------------------------------

# accumlate multiply each row over below one

np.multiply.accumulate(a)

------------------------------------------

# Matrix Determinant

a = np.random.randint(10,size = (3,3) )
print(a)
np.linalg.det(a)

[[8 3 5]
 [3 0 4]
 [6 8 7]]
-126.99999999999999

------------------------------------------

# calculate eigan value

a = np.random.randint(10,size = (3,3) )
print(a)
np.linalg.eig(a)

[[1 6 3]
 [3 5 1]
 [5 1 0]]
(array([ 8.81395848, -3.89243239,  1.07847392]),
 array([[ 0.6472315 ,  0.62487726,  0.27149688],
        [ 0.62393082, -0.12413255, -0.42757288],
        [ 0.43795173, -0.77079149,  0.86224757]]))

------------------------------------------

# Vertical Stack

a = np.random.randint(10,size = (3,3) )
b = np.random.randint(10,size = (3,3) )
print(a)
print(b)

np.vstack((a,b))

[[9 4 8]
 [6 3 0]
 [5 4 7]]
[[1 6 8]
 [6 8 6]
 [1 3 9]]
array([[9, 4, 8],
       [6, 3, 0],
       [5, 4, 7],
       [1, 6, 8],
       [6, 8, 6],
       [1, 3, 9]])

------------------------------------------

# Horizontal Stacking

a = np.random.randint(10,size = (3,3) )
b = np.random.randint(10,size = (3,3) )
print(a)
print(b)

np.hstack((a,b))

[[5 6 3]
 [1 0 2]
 [4 3 2]]
[[9 4 6]
 [2 8 5]
 [8 4 2]]
array([[5, 6, 3, 9, 4, 6],
       [1, 0, 2, 2, 8, 5],
       [4, 3, 2, 8, 4, 2]])

------------------------------------------

# Vertical Merge

a = np.random.randint(10,size = (3,3) )
b = np.random.randint(10,size = (3,3) )
print(a)
print(b)

np.concatenate([a,b] , axis = 0)

[[4 9 7]
 [7 2 9]
 [4 3 4]]
[[7 7 1]
 [2 6 3]
 [5 1 2]]
array([[4, 9, 7],
       [7, 2, 9],
       [4, 3, 4],
       [7, 7, 1],
       [2, 6, 3],
       [5, 1, 2]])

------------------------------------------

# Horizontal Merging

a = np.random.randint(10,size = (3,3) )
b = np.random.randint(10,size = (3,3) )
print(a)
print(b)

np.concatenate([a,b] , axis = 1)

[[1 5 4]
 [5 9 9]
 [2 9 9]]
[[3 4 0]
 [6 2 2]
 [5 5 4]]
array([[1, 5, 4, 3, 4, 0],
       [5, 9, 9, 6, 2, 2],
       [2, 9, 9, 5, 5, 4]])

------------------------------------------

# index of max or min

a = np.random.randint(10,size = (3,3) )
print(a)

np.argmax(a)
np.argmin(a)

------------------------------------------

# Variance of Matrix

a = np.random.randint(10,size = (3,3) )
np.var(a)

------------------------------------------

# Covariance of Matrix

a = np.random.randint(10,size = (3,3) )
np.cov(a)

------------------------------------------

# Correlation Matrix

a = np.random.randint(10,size = (3,3) )
np.corrcoef(a)

array([[ 1.        , -0.18898224,  0.        ],
       [-0.18898224,  1.        , -0.98198051],
       [ 0.        , -0.98198051,  1.        ]])

------------------------------------------

# Matrix Inverse

a = np.random.randint(10,size = (3,3) )
np.linalg.inv(a)

array([[-1.2 ,  2.95, -1.  ],
       [ 1.  , -2.5 ,  1.  ],
       [ 0.2 , -0.2 ,  0.  ]])