def p1(x):  return x**4 - 4*x**2 + 3*x
def p2(x):  return np.sin(10*x)*10
x = np.linspace(-3,3,1000)
plt.plot(x,p1(x),x,p2(x))

------------------------------------------

plt.plot(x, x + 0, linestyle='solid')
plt.plot(x, x + 1, linestyle='-')

------------------------------------------

plt.plot(x, x + 4, linestyle='dashed')
plt.plot(x, x + 5, linestyle='--')

------------------------------------------

plt.plot(x, x + 8, linestyle='dashdot')
plt.plot(x, x + 9, linestyle='-.')

------------------------------------------

plt.plot(x, x + 12, linestyle='dotted')
plt.plot(x, x + 13, linestyle=':')

------------------------------------------

plt.plot(x,x+0,'b--')
plt.plot(x,x+3,'g-')
plt.plot(x,x+6,'r-.')
plt.plot(x,x+9,'y:')

------------------------------------------

plt.plot(x,x+0,'b-',linewidth = 1)
plt.plot(x,x+3,'b-',linewidth = 5)
plt.plot(x,x+6,'b-',linewidth = 11)
plt.plot(x,x+9,'b-',linewidth = 20)

------------------------------------------

plt.plot(x, x + 0, color = 'b')
plt.plot(x, x + 2, color = 'g')
plt.plot(x, x + 4, color = 'y')
plt.plot(x, x + 6, color = 'r')
plt.plot(x, x + 8, color = 'c')
plt.plot(x, x + 10, color = 'm')
plt.plot(x, x + 12, color = 'k')
plt.plot(x, x + 14, color = 'w')

------------------------------------------

plt.plot(x, x + 0, '-')
plt.plot(x, x + 5, 'o')
plt.plot(x, x + 10, '-o')

------------------------------------------

plt.plot(x,x,'--')
plt.plot(x,x+3,'o')
plt.plot(x,x+6,'^')
plt.plot(x,x+9,'.')

------------------------------------------

plt.plot(x,x+9,'>')
plt.plot(x,x+6,'v')
plt.plot(x,x+3,'o')
plt.plot(x,x,',')

------------------------------------------

plt.plot(x,x+12,'<')
plt.plot(x,x+9,'1')
plt.plot(x,x+6,'2')
plt.plot(x,x+3,'3')
plt.plot(x,x,'4')

------------------------------------------

plt.plot(x,x+12,'8')
plt.plot(x,x+9,'s')
plt.plot(x,x+6,'P')
plt.plot(x,x+3,'p')

------------------------------------------

plt.plot(x,x+12,'*')
plt.plot(x,x+9,'h')
plt.plot(x,x+6,'x')
plt.plot(x,x+3,'+')

------------------------------------------

plt.plot(x,x+12,'d')
plt.plot(x,x+9,'|')
plt.plot(x,x+6,'_')

------------------------------------------

plt.plot(x,x+12,'r*')
plt.plot(x,x+9,'gh')
plt.plot(x,x+6,'bx')
plt.plot(x,x+3,'y+')