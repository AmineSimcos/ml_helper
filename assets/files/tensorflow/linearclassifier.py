# model

model = tf.estimator.LinearClassifier(feature_columns=feat_cols)

-----------------------------------------------

# Training

model.train(input_fn=input_func,steps = 100)

-----------------------------------------------

# Predicting

predictions = list(model.predict(input_fn=pred_fn))

-----------------------------------------------