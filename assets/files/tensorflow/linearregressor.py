# Feature Col

feature_columns = [tf.feature_column.numeric_column('x',shape=X_train.shape[1:])]			


----------------------------------------------

# Model

estimator = tf.estimator.LinearRegressor(feature_columns=feature_columns,model_dir="train1")	

----------------------------------------------

# Input Function

train_input = tf.estimator.inputs.numpy_input_fn(x={"x": X_train},y=y_train,batch_size=128,shuffle=False,num_epochs=None)

----------------------------------------------

# Training

estimator.train(input_fn = train_input,steps=5000) 

----------------------------------------------

# Evaluating

eval_input = tf.estimator.inputs.numpy_input_fn(x={"x": X_test},y=y_test,shuffle=False,batch_size=128,num_epochs=1)

estimator.evaluate(eval_input,steps=None)

----------------------------------------------

# Predicting

test_input = tf.estimator.inputs.numpy_input_fn(x={"x": x_predict},batch_size=128,num_epochs=1,shuffle=False)

y = estimator.predict(test_input) 			
predictions = list(p["predictions"] for p in itertools.islice(y, 6))
print("Predictions: {}".format(str(predictions)))


=========================================


# Feature Col

feature_cols = [tf.feature_column.numeric_column(k) for k in FEATURES]

----------------------------------------------

# Model

estimator = tf.estimator.LinearRegressor(feature_columns=feature_cols,model_dir="train")

----------------------------------------------

# Training

estimator.train(input_fn=get_input_fn(training_set,num_epochs=None,n_batch = 128,shuffle=False),steps=1000)

----------------------------------------------

# Evaluating

ev = estimator.evaluate(input_fn=get_input_fn(test_set,num_epochs=1,n_batch = 128,shuffle=False))


loss_score = ev["loss"]
print("Loss: {0:f}".format(loss_score))	
----------------------------------------------

# Predicting

y = estimator.predict(input_fn=get_input_fn(prediction_set,num_epochs=1,n_batch = 128,shuffle=False))

predictions = list(p["predictions"] for p in itertools.islice(y, 6))
print("Predictions: {}".format(str(predictions)))