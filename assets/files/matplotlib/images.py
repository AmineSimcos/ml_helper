import matplotlib.pyplot as plt 
a = plt.imread('D:\\1.jpg')

------------------------------------------

print(a.shape)

------------------------------------------

print(a)

------------------------------------------

print(a.size)

------------------------------------------

import matplotlib.pyplot as plt 
a = plt.imread('D:\\1.jpg')

f= open("D:\\2.txt","w+")
b,c,d = a.shape

for x in range(b):
    for y in range(c):
        for z in range(3):
            f.write('\n' + str('Data for : ' +str(x) 
            +' & ' + str(y) +' & ' + str(z)) +' is :  '
            + str((a[x,y,z])))
f.close()

------------------------------------------

import matplotlib.pyplot as plt 
a = plt.imread('D:\\1.jpg')
plt.imshow(a)

------------------------------------------

x = a[:,:,0]
plt.subplot(222)
plt.imshow(x)
y = a[:,:,1]
plt.subplot(223)
plt.imshow(y)
z = a[:,:,2]
plt.subplot(224)
plt.imshow(z)

------------------------------------------

plt.subplot(221)
plt.imshow(a)
x = a[:200,:300,:]
plt.subplot(222)
plt.imshow(x)
y = a[120:470,220:550,:]
plt.subplot(223)
plt.imshow(y)
z = a[300:350,450:500,:]
plt.subplot(224)
plt.imshow(z)

------------------------------------------

import matplotlib.pyplot as plt 
a = plt.imread('D:\\1.jpg')
plt.imsave('D:\\6.jpg', a)

------------------------------------------

import matplotlib.pyplot as plt 
a = plt.imread('D:\\1.jpg')
plt.imsave('D:\\6.jpg', a[:,0:500])
b = plt.imread('D:\\6.jpg')
plt.imshow(b)

------------------------------------------

import matplotlib.pyplot as plt 
a = plt.imread('D:\\1.jpg')
plt.imsave('D:\\6.jpg', a[::15,::15])
b = plt.imread('D:\\6.jpg')
plt.imshow(b)