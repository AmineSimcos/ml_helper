x = np.random.rand(20)
y = np.random.rand(20)
plt.hist2d(x, y)

------------------------------------------

plt.hist2d(x, y, cmap='Reds')

------------------------------------------

plt.hist2d(x, y, cmap='Blues', bins=30)

------------------------------------------

plt.hist2d(x, y, cmap='Blues', bins=30)
plt.colorbar()

------------------------------------------

plt.hist2d(x, y, cmap='Blues', bins=30)
a = plt.colorbar()

------------------------------------------

a.set_label('counts in bin')
plt.hist2d(x, y, bins=30, cmap='Blues')
plt.colorbar()

------------------------------------------

mean = [0, 0]
cov = [[1, 1], [1, 2]]
x, y = np.random.multivariate_normal(mean, cov, 10000).T
plt.hist2d(x, y, bins=30, cmap='Blues')
plt.colorbar()
 