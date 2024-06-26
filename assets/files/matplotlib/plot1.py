import matplotlib.pyplot as plt
a = ( 1,2,3,6,5,8,7,4)
plt.plot(a)

------------------------------------------

a = (1,2,3,4,5,6)
b = (3,9,10,12,16,18)
plt.plot(a,b)

------------------------------------------

x = np.linspace(0, 10) 
y = np.sin(x) 
plt.plot(x, y)

------------------------------------------

plt.ylabel('Time')
plt.xlabel('Work')

------------------------------------------

ax = plt.axes()
ax.set_xlabel('Time')
ax.set_ylabel('Work')

------------------------------------------

ax = plt.axes()
ax.set(xlabel='Time', ylabel='Work' )
plt.plot(a,b,marker='o')

------------------------------------------

plt.plot(a,b,marker='o',markersize=11)

------------------------------------------

plt.plot(a,b,color='blue',marker='o',markersize=11)

------------------------------------------
plt.plot(a,b,color='blue',marker='o',markersize=11) #color name
plt.plot(a,b,color='g',marker='o',markersize=11) #color litter
plt.plot(a,b,color='0.75',marker='o',markersize=11) # its degree from B&W
plt.plot(a,b,color='#FFDD44',marker='o',markersize=11) # its code
plt.plot(a,b,color=(1.0,0.2,0.3),marker='o',markersize=11) #its RGB degrees
plt.plot(a,b,color='chartreuse',marker='o',markersize=11) #its name in html

------------------------------------------

plt.title('time/work consumption')

------------------------------------------

ax.set_title('time/work consumption')
ax.set(title='time/work consumption')

------------------------------------------

plt.plot(x,x,'r--',x,x**2,'bo',x,x**3,'g^')
plt.plot(x,y,'b',x,z,'g',x,w,'r')

------------------------------------------

plt.errorbar(x, y, yerr=dy, fmt='.b');

------------------------------------------

plt.errorbar(x, y, yerr=dy, fmt='.r');

------------------------------------------
plt.errorbar(x, y, yerr=dy, fmt='o',color='black', ecolor='lightgray',elinewidth=3, capsize=0)

------------------------------------------

plt.errorbar(x, y, xerr=dy, fmt='.r')
