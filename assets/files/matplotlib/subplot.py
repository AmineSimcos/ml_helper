import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(0,100)
plt.subplot(1,2,1)
y = 3*x
plt.plot(x,y,c='r')
plt.subplot(1,2,2)
y = -3*x
plt.plot(x,y,c='g')

------------------------------------------

plt.subplot(1,2,3)   #wrong example

------------------------------------------

plt.subplot(2,2,1)
y = 3*x
plt.plot(x,y,c='r')
plt.subplot(2,2,2)
y = -3*x
plt.plot(x,y,c='g')
plt.subplot(2,2,3)
y = x**2
plt.plot(x,y,c='b')
plt.subplot(2,2,4)
y =  x**0.5
plt.plot(x,y,c='r')

------------------------------------------

plt.subplot(221)
plt.subplot(222)
plt.subplot(2,2,3)
plt.subplot(2,2,4)

------------------------------------------

fig, ax = plt.subplots(5)
ax[0].plot(x,3*x)
ax[1].plot(x,-x/400)
ax[2].plot(x,300*(0.002*x+3))
ax[3].plot(x,np.sin(x))
ax[4].plot(x,x**0.1)

------------------------------------------
plt.subplots_adjust(left=0,right=1.5,bottom=0,top=1.5,wspace=0,hspace=0)

------------------------------------------

plt.text(0.5, 0.5, str((2, 3, 5)),fontsize=18, ha='center')

------------------------------------------

fig, ax = plt.subplots(2, 3, sharex='col')

------------------------------------------

fig, ax = plt.subplots(2, 3, sharey='row')

------------------------------------------

fig, ax = plt.subplots(2, 3, sharex ='col' ,sharey='row')

------------------------------------------

grid = plt.GridSpec(2, 3)
plt.subplot(grid[0, 0])
plt.subplot(grid[0, 1:])
plt.subplot(grid[1, :2])
plt.subplot(grid[1, 2])

------------------------------------------

fig = plt.figure()
ax = fig.add_subplot(111, polar=True)
r = np.arange(0,1,0.001)
theta = np.pi*r*4
line, = ax.plot(theta, r, color='r', lw=3)

------------------------------------------

fig = plt.figure()
ax = fig.add_subplot(111, polar=True)
r = np.arange(0,1,0.001)
theta = np.pi*r*25
line, = ax.plot(theta, r, color='r', lw=3)

 
