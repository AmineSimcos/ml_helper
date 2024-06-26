import matplotlib.pyplot as plt
plt.pie([15,30,45,10])
plt.show()

------------------------------------------

plt.axis('equal')

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'))

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'),explode = [0.1,0.1,0.1,0.1])

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'), explode = [0.1,0.1,0.1,0.1],autopct ='%1.1f%%')

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'), explode = [0.1,0.1,0.1,0.1],autopct ='%1.1f%%',shadow = True)

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'), explode = [0.1,0.1,0.1,0.1],autopct ='%1.1f%%',shadow = True,startangle = 90)

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'), explode = [0.1,0.1,0.1,0.1],autopct ='%1.1f%%',shadow = True,startangle = 180)

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'), explode = [0.1,0.1,0.1,0.1],autopct ='%1.1f%%',shadow = True, startangle = 180, labeldistance = 1.5)

------------------------------------------

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'), explode = [0.1,0.1,0.1,0.1],autopct ='%1.1f%%',shadow = True, startangle = 180, labeldistance = 1.5, pctdistance =1.2)

plt.axis('equal')
plt.show()