a = np.sin(30)
b = np.cos(30)
c = np.tan(30)

print(a , b , c)
------------------------------------------
a = np.sin(30*np.pi/180)
b = np.cos(30*np.pi/180)
c = np.tan(30*np.pi/180)

print(a)
print(b)
print(c)
------------------------------------------
a = np.sin(np.deg2rad(30))

print(a)