import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10,10) 
ax = plt.axes()
ax.set_xlim(-20,20)
ax.set_ylim(-20,20)
plt.plot(x,-x**2  )
------------------------------------------
plt.axis([-20,10,-10,20])
#X start , X end , Y start , Y end
plt.plot(x,-x**2  )
------------------------------------------
ax = plt.axes()
ax.set(xlim=(-5, 10), ylim=(-20, 20) )
plt.plot(x,-x**2  )
------------------------------------------
plt.axis('equal')
------------------------------------------
ax.xaxis.set_visible(False)
ax.yaxis.set_visible(False)
plt.plot(x,-x**2  )