# Numerical Column

age = tf.feature_column.numeric_column("age")

---------------------------------------------

# Categorical Column

gender = tf.feature_column.categorical_column_with_vocabulary_list("gender", ["Female", "Male"])

---------------------------------------------

# Categorical Column with Hash Bucket

occupation = tf.feature_column.categorical_column_with_hash_bucket("occupation", hash_bucket_size=1000)

---------------------------------------------

# Feature List

feat_cols = [capital_gain,capital_loss,hours_per_week , . . ]

---------------------------------------------

# Feature Column

feature_columns = [tf.contrib.layers.real_valued_column("", dimension=6)]


---------------------------------------------

# Feature Column

feature_columns = [tf.feature_column.numeric_column('x',shape=X_train.shape[1:])]			