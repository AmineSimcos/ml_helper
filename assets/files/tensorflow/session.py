import tensorflow as tf

'''
sess =  tf.Session()
print(sess.run(****))
'''


sess =  tf.Session()
b = tf.constant(5)
print(sess.run(b))

'''
sess = tf.Session()
print(sess.run(s3))

..
..
..
sess.close()
''' 

c = tf.constant(8)
with tf.Session() as sess : 
    print(sess.run(c))