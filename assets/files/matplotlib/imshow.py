import matplotlib.pyplot as plt
I=  [[1,1,1,1,1,1,1],
     [1,2,2,2,2,2,1],
     [1,2,3,3,3,2,1],
     [1,2,3,4,3,2,1],
     [1,2,3,3,3,2,1],
     [1,2,2,2,2,2,1],
     [1,1,1,1,1,1,1]]
plt.imshow(I)
plt.colorbar()
------------------------------------------
plt.style.use('classic')
------------------------------------------
plt.imshow(I, cmap='gray');
------------------------------------------
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-10, 10, 1000)
I = np.cos(x) * np.sin(x[:, np.newaxis])

speckles = (np.random.random(I.shape) < 0.01)

I[speckles] = np.random.normal(0, 3, 
             np.count_nonzero(speckles))

plt.figure(figsize=(10, 3.5))
plt.imshow(I, cmap='RdBu')
plt.colorbar()
plt.clim(-1, 1)