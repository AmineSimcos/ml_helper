# Count Specific Numbers

a = np.random.randint(0, 10, (3, 3))
b = np.count_nonzero(a)

------------------------------------------

b = np.count_nonzero(a>5)

------------------------------------------

b = np.count_nonzero(a>5,axis=1)
c = np.count_nonzero(a<8,axis=1)

------------------------------------------

a = np.random.randint(0, 10, (3, 3))
b = np.any(a>5)

------------------------------------------

a = np.random.randint(0, 10, (3, 3))
b = np.any(a>5,axis=1)

------------------------------------------

a = np.random.randint(0, 10, (3, 3))
b = np.all(a>5)

------------------------------------------