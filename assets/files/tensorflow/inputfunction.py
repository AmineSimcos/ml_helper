# for Training
input_func=tf.estimator.inputs.pandas_input_fn(x=X_train,y=y_train,batch_size=100,num_epochs=None,shuffle=True)

---------------------------------------------

# for testing

pred_fn = tf.estimator.inputs.pandas_input_fn(x=X_test,batch_size=len(X_test),shuffle=False)



---------------------------------------

# input function

input_fn = tf.estimator.inputs.numpy_input_fn(x={'images': mnist.train.images},y=mnist.train.labels,
batch_size=batch_size,num_epochs=None, shuffle=True)