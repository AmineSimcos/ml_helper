#  Model

classifier = tf.contrib.learn.DNNClassifier(feature_columns=feature_columns,hidden_units=[512, 256, 128],n_classes=4,
                                            optimizer=tf.train.ProximalAdagradOptimizer(learning_rate=0.15,l1_regularization_strength=0.001))


------------------------------------------

# Training

classifier.fit(input_fn=get_train_inputs,steps=1200)

------------------------------------------

# Training

print(classifier.evaluate(input_fn=get_test_inputs, steps=1))

accuracy_score = classifier.evaluate(input_fn=get_test_inputs, steps=1)["accuracy"]
print("Test Accuracy: {0:f}".format(accuracy_score))  

