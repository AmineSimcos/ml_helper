import matplotlib.pyplot as plt


fig = plt.figure()

plt.pie([15,30,45,10],labels=('Egypt','Syria','Tunise','Morroco'), explode = [0.1,0.1,0.1,0.1],autopct ='%1.1f%%')

plt.savefig('d:\\1.png',dpi=fig.dpi)