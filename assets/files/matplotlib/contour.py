import matplotlib.pyplot as plt

X = [1,2,3,4,5,6,7]
Y = [1,2,3,4,5,6,7]
Z = [[1,1,1,1,1,1,1],
     [1,2,2,2,2,2,1],
     [1,2,3,3,3,2,1],
     [1,2,3,4,3,2,1],
     [1,2,3,3,3,2,1],
     [1,2,2,2,2,2,1],
     [1,1,1,1,1,1,1]]
plt.contour(X, Y, Z, colors='red')

------------------------------------------

X = np.random.randint(1,10,6)
Y = np.random.randint(1,10,6)
Z = np.random.randint(1,10,36)
ZZ = np.reshape(Z,(6,6))
plt.contour(X, Y, ZZ, colors='red')

------------------------------------------

plt.contour(X, Y, Z, 20 , cmap='RdGy')

------------------------------------------

plt.contourf(X, Y, Z, 20 , cmap='RdGy')

------------------------------------------

pl.contourf(X, Y, f(X, Y), 8, alpha=.75, cmap='jet')

------------------------------------------

C = pl.contour(X,Y,f(X,Y),8,colors='b')

------------------------------------------

pl.contourf(X, Y, f(X, Y), 8, alpha=.75, cmap='jet')
C = pl.contour(X,Y,f(X,Y),8,colors='b')