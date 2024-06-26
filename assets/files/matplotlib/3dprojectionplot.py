import matplotlib.pyplot as plt
import numpy as np
fig = plt.figure()

def f(x, y):
    return np.cos(np.sqrt(x ** 2 + y ** 2))
x = np.linspace(-6, 6, 20)
y = np.linspace(-6, 6, 20)
X, Y = np.meshgrid(x, y)
Z = f(X, Y)
fig = plt.figure()
ax = plt.axes(projection='3d')
ax.plot_surface(X, Y, Z, edgecolor='w')