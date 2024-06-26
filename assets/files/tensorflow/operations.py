import tensorflow as tf

#####################################

s1 = tf.constant('hi ')
s2 = tf.constant('people ')
s3 = tf.add(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant(20)
s2 = tf.constant(30)
s3 = tf.add(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant(20)
s2 = tf.constant(30)
s3 = tf.multiply(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant(20)
s2 = tf.constant(30)
s3 = tf.subtract(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant(20)
s2 = tf.constant(30)
s3 = tf.divide(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant(20)
s2 = tf.constant(3)
s3 = tf.pow(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant([5,6,7,8])
s2 = tf.constant(30)
s3 = tf.add(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant([5,6,7,8])
s2 = tf.constant([1,2,3,4])
s3 = tf.add(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

s1 = tf.constant([5,6,7,8])
s2 = tf.constant([1,2,3,4,5,6,7])
s3 = tf.add(s1,s2)

sess = tf.Session()
print(sess.run(s3))

#####################################

matrix1 = tf.constant([[5., 3.]])
matrix2 = tf.constant([[2.],
                       [2.]])
product = tf.matmul(matrix1, matrix2)


with tf.Session() as sess:
    result = sess.run(product)
    print (result)

#####################################

matrix1 = tf.constant([[5,6,9,8],
                      [1,2,8,9],
                      [7,9,5,6],
                      [1,2,3,9]])

#####################################

matrix2 = tf.matrix_transpose(matrix1)

with tf.Session() as sess:
    result = sess.run(matrix2)
    print (result)
