import tensorflow as tf

#####################################

graph = tf.get_default_graph()

#####################################

graph.get_operations()

#####################################

a= tf.constant(5)
graph.get_operations()

#####################################

b= tf.constant(7)
graph.get_operations()

#####################################

c= tf.add(a,b)
graph.get_operations()

#####################################

d= tf.placeholder(tf.float32)
graph.get_operations()

#####################################

e= tf.Variable(2)
graph.get_operations()

#####################################

for operation in graph.get_operations() :
    print(operation.name)

#####################################