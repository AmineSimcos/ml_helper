# The NN : 

KerasModel = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(input_shape=(28, 28)),
  tf.keras.layers.Dense(512, activation=tf.nn.relu),
  tf.keras.layers.Dropout(0.2),
  tf.keras.layers.Dense(10,activation=tf.nn.softmax)
])

----------------------------------

# Compiling


KerasModel.compile(optimizer ='adam',loss='sparse_categorical_crossentropy',metrics=['accuracy'])


----------------------------------

# Optimizer : 

adam , SGD , RMSprop , adagrad , adadelta , adamax , nadam


----------------------------------

# Loss 

sparse_categorical_crossentropy , categorical_crossentropy, binary_crossentropy , mean_squared_error


----------------------------------

# Metrics

accuracy , mean_absolute_error, mean_squared_error

----------------------------------

# Early Stop

early_stop = keras.callbacks.EarlyStopping(monitor='val_loss', patience=10)

----------------------------------

#  Training . .   

KerasModel.fit(X_train, y_train, epochs=10)

----------------------------------

#  Summary

KerasModel.summary()

----------------------------------

# Predicting . .   

y_pred = KerasModel.predict(X_train)

print('Prediction Shape is {}'.format(y_pred.shape))
print('Prediction items are {}'.format(y_pred[:5]))



----------------------------------

# Evaluating . .   

ModelLoss, ModelAccuracy = KerasModel.evaluate(X_train, y_train)

print('Model Loss is {}'.format(ModelLoss))
print('Model Accuracy is {}'.format(ModelAccuracy ))


----------------------------------

# Saving 

KerasModel.save('KerasModel.model')


----------------------------------

#


----------------------------------

#


----------------------------------

#


----------------------------------

#


----------------------------------

#
 