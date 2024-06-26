a = np.zeros(8)
b = np.ones(10)

------------------------------------------

a = np.zeros((3,5))
b = np.ones((6,8))

------------------------------------------

a = np.zeros((2,3,2))
b = np.ones((2,3,2))

------------------------------------------

a = np.eye(5) 

------------------------------------------

a = np.full((3, 5), 35)

------------------------------------------

# numbers from 0 to 17 then reshaped

a = np.arange(18).reshape(3,6)
b = np.arange(27).reshape(3,3,3)

------------------------------------------

# 50 numbers equally between 0-30
b = np.linspace(0,30)

------------------------------------------

# 5 numbers equally between 0-30
c = np.linspace(0,100,5)

-------------------------------------------

b = np.linspace(0,30,12).reshape(3,4)
c = np.linspace(0,100,27).reshape(3,3,3)

------------------------------------------

# Diagonal Matrix 5X5
a = np.diag(np.array([5,12,4,-1,3]))

------------------------------------------

# Diagonal Matrix plus 3 zero rows and columns 8X8
a = np.diag(np.array([5,12,4,-1,3]),k=3)

------------------------------------------