import matplotlib.pyplot as plt
x=np.random.rand(500)
y=np.random.rand(500) 
plt.scatter(x,y)

------------------------------------------

z=np.random.normal(0,1,1000) 
plt.scatter(x,y,c=z)

------------------------------------------

w=50*np.random.normal(0,1,1000) 
plt.scatter(x,y,s=w,c=z)

------------------------------------------

sz = 1000 * rng.rand(100)
plt.scatter(x, y,c=cl,s=sz,alpha=0.3)
plt.show()

------------------------------------------

x=[1,2,3,4,5,6,7,8,9,10]
y=[4,7,8,3,0,5,9,4,1,9]
w=[600,900,800,700,400,200,300,100,600,300]
z=[7,5,6,9,8,5,6,3,2,1]
plt.scatter(x,y,s=w,c=z)
plt.show()

------------------------------------------

plt.colorbar()