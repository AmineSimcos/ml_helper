import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
%matplotlib inline

#####################################

(x_train, y_train), (x_test, y_test) = tf.keras.datasets.mnist.load_data()

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
print('---------------------------------------- ')
print('All y is : ' , np.unique( y_train ))
 
plt.imshow(x_train[5])


#####################################


from tensorflow.examples.tutorials.mnist import input_data
mnist = input_data.read_data_sets("MNIST-data", one_hot=True)

print('X Train Shape is : ' , mnist.train.images.shape)
print('X Train  is : ' , mnist.train.images[5])
print('---------------------------------------- ')
print('X Test Shape is : ' , mnist.test.images.shape)
print('X Test  is : ' , mnist.test.images[5])
print('---------------------------------------- ')
print('y Train Shape is : ' , mnist.train.labels.shape)
print('y Train is : ' , mnist.train.labels[5])
print('---------------------------------------- ')
print('y Test Shape is : ' , mnist.test.labels.shape)
print('y Test  is : ' , mnist.test.labels[5])
print('---------------------------------------- ')

#####################################

for i in range(10) : 
    batch = mnist.train.next_batch(5)
    print(batch[0])
    print(batch[1])
    print('----------------------')

#####################################