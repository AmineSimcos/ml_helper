import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0,20,20)
y = np.random.randint(50,size = 20)
plt.bar(x , y)

------------------------------------------

plt.bar(x,y,width=0.9)

------------------------------------------

plt.bar(x,y,width=0.9,color='r')

------------------------------------------

plt.bar(x,y,width=0.9,color='r',alpha=.5)

------------------------------------------

plt.bar(x,y,facecolor='r',edgecolor ='g')

------------------------------------------

plt.bar(x,y,facecolor='r',edgecolor ='g')

------------------------------------------

plt.text(7, -9, 'Polulation Denisty', style='italic', bbox={'facecolor':'blue', 'alpha':0.5, 'pad':10})

------------------------------------------

n = 12
X = np.arange(n)
Y1 = (1 - X / float(n)) * np.random.uniform(0.5, 1.0, n)
Y2 = (1 - X / float(n)) * np.random.uniform(0.5, 1.0, n)
plt.bar(X, +Y1, color='r',alpha = 0.5)
plt.bar(X, -Y2, facecolor='b',alpha = 0.5)
for x, y in zip(X, Y1):
    plt.text(x + 0.4, y + 0.05, '%.2f' % y, ha='center', va='bottom')
    plt.ylim(-1.25, +1.25)