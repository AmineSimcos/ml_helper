import numpy as np
import matplotlib.pyplot as plt
fig = plt.figure()

def f(x, y):
    return np.sin(np.sqrt(x ** 2 + y ** 2))
 
theta = 2 * np.pi * np.random.random(1000)
r = 6 * np.random.random(1000)
x = r * np.sin(theta)
y = r * np.cos(theta)
z = f(x, y)

ax = plt.axes(projection='3d')
ax.plot_trisurf(x, y, z,cmap='viridis')