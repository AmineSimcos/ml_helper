from sklearn.datasets import load_iris

iris = load_iris()

print(type(iris))

print(iris.data)

print(iris.target)

print(iris.feature_names)

print(iris.target_names)

print(iris.data.shape)
print(iris.target.shape)

X = iris.data
y = iris.target


------------------------------------------------------------

from sklearn.datasets import load_breast_cancer
data = load_breast_cancer()
data.target[[10, 50, 85]]
list(data.target_names)

------------------------------------------------------------

from sklearn.datasets import load_boston
boston = load_boston()
print(boston.data.shape)

------------------------------------------------------------

from sklearn.datasets import load_sample_image
china = load_sample_image('china.jpg')
china.dtype
china.shape
flower = load_sample_image('flower.jpg')
flower.dtype
flower.shape

import matplotlib.pyplot as plt
plt.imshow(china)
plt.imshow(flower)

------------------------------------------------------------
from sklearn.datasets import load_wine
data = load_wine()
data.target[[10, 80, 140]]
list(data.target_names)

------------------------------------------------------------

from sklearn import datasets
digits =datasets.load_digits()

from sklearn.datasets import load_digits
digits = load_digits()
print(digits.data.shape)
import matplotlib.pyplot as plt
plt.gray()

for g in range(10):
    plt.matshow(digits.images[g])
plt.show()

x = digits.data[:-10]
y = digits.target[:-10]