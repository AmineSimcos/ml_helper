import tensorflow as tf

#####################################

a = tf.Variable(3)
b = tf.Variable(3,tf.float32)
c = tf.Variable([2,5,6,9,6])
d = tf.Variable([[2,5,6],[8,5,8], [8,8,1]])
e = tf.Variable('I love TensorFlow')

#####################################

with tf.Session() as sess :
    sess.run(tf.global_variables_initializer())
    print(sess.run(a))
    print(sess.run(b))
    print(sess.run(c))
    print(sess.run(d))
    print(sess.run(e))

#####################################

price = tf.Variable(20) 
sess = tf.Session()
init = tf.global_variables_initializer()
sess.run(init)
print('original price is : ',sess.run(price))

price = tf.Variable(30) 
sess.run(tf.global_variables_initializer())
print('the price is : ',sess.run(price))

price = tf.Variable(40) 
sess.run(tf.global_variables_initializer())
print('the price is : ',sess.run(price))

price = tf.Variable(50) 
sess.run(tf.global_variables_initializer())
print('the price is : ',sess.run(price))

price = tf.Variable(60) 
sess.run(tf.global_variables_initializer())
print('the price is : ',sess.run(price))

#####################################

'''
value = tf.assign(value,newvalue)
'''

#####################################

price = tf.assign(price,50)
print('new price is : ',sess.run(price))

for j in range(6) : 
    price = tf.assign(price,price+10)
    print('new price is : ',sess.run(price))