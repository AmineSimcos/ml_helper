import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
%matplotlib inline

#####################################

(x_train, y_train), (x_test, y_test) = tf.keras.datasets.boston_housing.load_data(path='boston_housing.npz',
test_split=0.2,seed=113)

print('X Train Shape is : ' , x_train.shape)
print('X Train  is : ' , x_train[5])
print('---------------------------------------- ')
print('X Test Shape is : ' , x_test.shape)
print('X Test  is : ' , x_test[5])
print('---------------------------------------- ')
print('y Train Shape is : ' , y_train.shape)
print('y Train is : ' , y_train[5])
print('---------------------------------------- ')
print('y Test Shape is : ' , y_test.shape)
print('y Test  is : ' , y_test[5])
