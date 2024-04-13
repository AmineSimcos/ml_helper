import numpy as np
import matplotlib.pyplot as plt


xdata = np.linspace(0,50,20)
ydata = np.sqrt(xdata) + np.random.rand()

plt.scatter(xdata , ydata)

plt.xticks(range(0,55,5))
plt.yticks(range(0,10,3))
plt.show()


