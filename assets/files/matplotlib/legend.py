import matplotlib.pyplot as plt
import numpy as np
 
x = np.linspace(0, 20, 1000)
fig, ax = plt.subplots()
plt.axis('equal')
ax.plot(x, np.sin(x),  label='Sin')
ax.plot(x, np.cos(x), label='Cos')
leg = ax.legend()
------------------------------------------
ax.legend(loc='upper left', frameon=False)
------------------------------------------
ax.legend(frameon=False,loc='lower center', ncol=2)
------------------------------------------
ax.legend(fancybox=True, # curvy or not
          framealpha=1, #1 for white,0 for black
          shadow=True, # shadow or not
          borderpad=1 , fontsize=14 ) #how big of box
------------------------------------------
lines = plt.plot(x, y)
# lines is a list of plt.Line2D instances
plt.legend(lines[:2], ['Cost', 'Time'])
