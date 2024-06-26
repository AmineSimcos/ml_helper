import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit
#function
def func(x, a, b, c):
    return a * np.exp(-b * x) + c
#random values of X 
xdata = np.linspace(0, 4, 50)
y = func(xdata, 2.5, 1.3, 0.5)
np.random.seed(1729)
# y noise
y_noise = 0.2 * np.random.normal(size=xdata.size)
ydata = y + y_noise
plt.plot(xdata, ydata, 'b-', label='data')  # draw the blue line

popt, pcov = curve_fit(func, xdata, ydata) #fitting
plt.plot(xdata, func(xdata, *popt), 'r-', #draw the red line
         label='fit: a=%5.3f, b=%5.3f, c=%5.3f' % tuple(popt))

#fit with bounds
popt, pcov =curve_fit(func,xdata,ydata,bounds=(0,[3., 1., 0.5]))
plt.plot(xdata, func(xdata, *popt),  #draw the green line
         'g--',label='fit: a=%5.3f, b=%5.3f, c=%5.3f' % tuple(popt))

plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.show()