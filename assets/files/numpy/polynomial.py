Polynomial = np.polynomial.Polynomial
X= np.array([0,20,40,60,80,100,120,140,160,180])
Y= np.array([10,9,8,7,6,5,4,3,2,1])
points,stats = Polynomial.fit(X,Y,1,full=True)
------------------------------------------
a = np.poly1d((-7))
b = np.poly1d((-7,2))
c = np.poly1d((-7,2,1))
d = np.poly1d((-7,2,1,3))
e = np.poly1d((-7,2,1,3,6))
------------------------------------------
a = np.poly1d((-7,2,1,3,6))
b=a(5)
------------------------------------------
a = np.polyval((1,2),2)
b = np.polyval((1,2,3),7)
c = np.polyval((1,2,3,5),-3)
d = np.polyval((1,2,3,5,-6),12.6)
------------------------------------------
a = np.polyder(poly1d((1,2,3)))
b = np.polyder(poly1d((1,2,3)),2)
------------------------------------------
a = np.polyder(poly1d((1,2,3)))
b = np.polyder(poly1d((1,2,3)),2)
------------------------------------------
a = np.polyint(poly1d((1,2,3)))
b = np.polyint(poly1d((1,2,3)),2)
------------------------------------------
a = np.polyint(poly1d((1,2,3)))
b = np.polyint(poly1d((1,2,3)),2)
------------------------------------------
a = np.roots(poly1d((1,2)))
b = np.roots(poly1d((1,2,3)))
------------------------------------------
x = array([3,6,2,5,4])
y = array([2,3,-9,6,2.5])
z = np.polyfit(x, y, 2)