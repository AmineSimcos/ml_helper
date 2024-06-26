import numpy as np
import matplotlib.pyplot as plt
fig = plt.figure()
ax = plt.axes(projection='3d')
z = 15 * np.random.random(500)
x =np.sin(z)+0.1*np.random.randn(500)
y =np.cos(z)+0.1*np.random.randn(500)
ax.scatter3D(x,y,z,c=z,cmap='Reds')

------------------------------------------

import numpy as np
import matplotlib.pyplot as plt
fig = plt.figure()

ax = plt.axes(projection='3d')
zline = np.linspace(0, 15, 1000)
xline = np.sin(zline)
yline = np.cos(zline)
ax.plot3D(xline, yline, zline, 'b')

z= 15 * np.random.random(100)
x= np.sin(z) + 0.1 * np.random.randn(100)
y= np.cos(z) + 0.1 * np.random.randn(100)
ax.scatter3D(x,y,z,c=z,cmap='R