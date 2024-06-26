import tensorflow as tf

a = tf.placeholder(tf.float32)
with tf.Session() as sess : 
    result = sess.run(a , feed_dict ={a:3})
    print(result)

#####################################

a = tf.placeholder(tf.float32)
b = a*2
with tf.Session() as sess : 
    result = sess.run(b , feed_dict ={a:3})
    print(result)

#####################################

x = tf.placeholder(tf.float32)
y = tf.placeholder(tf.float32)
z = tf.placeholder(tf.float32)
w = tf.placeholder(tf.float32)

#####################################

b = x*2 + 3*y**4 - 4/z + w-9

with tf.Session() as sess : 
    result = sess.run(b , feed_dict ={x:3,y:4,z:8,w:6})
    print(result)


x = tf.placeholder(tf.float32)
y = tf.placeholder(tf.float32)
z = tf.constant(8,tf.float32)
w = tf.constant(6,tf.float32)
#####################################

b = x*2 + 3*y**4 - 4/z + w-9

with tf.Session() as sess :
    result = sess.run(b , feed_dict ={x:3.0,y:4.0})
    print(result)

#####################################

x = tf.placeholder(tf.float32)
y = x**2
with tf.Session() as sess :
    print(sess.run(y,feed_dict={x:5}))


#####################################

x = tf.placeholder(tf.float32)
y = x**2
with tf.Session() as sess :
    print(sess.run(y, {x:[5,8,10,50]}))

#####################################

x = tf.placeholder(tf.float32)
y = x**2
with tf.Session() as sess :
    print(sess.run(y, {x:list(range(5,100))}))


#####################################

w = tf.constant([5.0])
b = tf.Variable([7.0],tf.float32)

x = tf.placeholder(tf.float32)

LinearRegressionModel = w*x + b

with tf.Session() as sess :
    sess.run(tf.global_variables_initializer())
    print(sess.run(LinearRegressionModel,{x:[3,5,7,9]}))