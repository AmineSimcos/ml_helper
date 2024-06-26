import numpy as np
import matplotlib.pyplot as plt

x = np.random.rand(200)
y = np.random.rand(200)
plt.hexbin(x, y, gridsize=30, cmap='Blues')
a = plt.colorbar()
a.set_label('counts in bin')

------------------------------------------

mean = [0, 0]
cov = [[1, 1], [1, 2]]
x, y = np.random.multivariate_normal(mean, cov, 10000).T
plt.hexbin(x, y, gridsize=30, cmap='Blues')
cb = plt.colorbar()
cb.set_label('counts in bin')
 
