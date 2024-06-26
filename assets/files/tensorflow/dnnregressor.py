
# Feature Col

feature_cols = [tf.feature_column.numeric_column(k) for k in FEATURES]

-----------------------------------------

# Model

regressor = tf.estimator.DNNRegressor(feature_columns=feature_cols, hidden_units=[10, 10])

-----------------------------------------

# Training

regressor.train(input_fn=get_input_fn(training_set), steps=5000)

-----------------------------------------

# Evaluating

ev = regressor.evaluate(input_fn=get_input_fn(test_set, num_epochs=1, shuffle=False))
loss_score = ev["loss"]
print("Loss: {0:f}".format(loss_score))

-----------------------------------------

# Predicting

y = regressor.predict(input_fn=get_input_fn(prediction_set, num_epochs=1, shuffle=False))
predictions = list(p["predictions"] for p in itertools.islice(y, 6))
print("Predictions: {}".format(str(predictions)))