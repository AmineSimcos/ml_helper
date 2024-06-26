import tensorflow as tf

a = tf.constant(3)
b = tf.constant(3,tf.float32)
c = tf.constant([2,5,6,9,6])
d = tf.constant([[2,5,6],
                 [8,5,8],
                 [8,8,1]])
e = tf.constant('I love TensorFlow')


with tf.Session() as sess : 
    print(sess.run(a))
    print(sess.run(b))
    print(sess.run(c))
    print(sess.run(d))
    print(sess.run(e))

3
3.0
[2 5 6 9 6]
[[2 5 6]
 [8 5 8]
 [8 8 1]]
b'I love TensorFlow'