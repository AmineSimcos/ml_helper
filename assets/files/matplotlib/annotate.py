import matplotlib.pyplot as plt
import numpy as np
fig, ax = plt.subplots()
x = np.linspace(0, 20, 1000)
y= -((x-10)**2) +5
ax.plot(x,y)
plt.annotate('Max',xy=(10,6),xytext =(15,10),arrowprops =dict(color='r',shrink=0.02,lw =1.5))
plt.annotate('5',xy=(5,-20),xytext =(2,0),arrowprops =dict(color='b',shrink=3,lw =5))
plt.annotate('15',xy=(15,-20),xytext =(10,-60),arrowprops =dict(color='g',shrink=3,lw =9))

------------------------------------------

import matplotlib.pyplot as plt
plt.style.use('seaborn-whitegrid')
import numpy as np

fig, ax = plt.subplots()
x = np.linspace(0, 20, 1000)
ax.plot(x, np.cos(x))
ax.axis('equal')

ax.annotate('local maximum', xy=(6.28, 1)
            ,xytext=(10, 4),arrowprops=dict(color='b'))

ax.annotate('local minimum', xy=(5*np.pi,-1)
            ,xytext=(2, -6),arrowprops=dict(color='r'
            ,connectionstyle="angle3,angleA=0,angleB=-90"))

 
