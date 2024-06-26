from sklearn.feature_extraction.text import CountVectorizer
vect = CountVectorizer()
#vect = CountVectorizer(stop_words=['call','you'])
#vect = CountVectorizer(lowercase= False)

simple_train = ['call you tonight', 'Call me a cab', 'please call me... PLEASE!']
vect.fit(simple_train)
vect.get_feature_names()
simple_train_dtm = vect.transform(simple_train)
simple_train_dtm.toarray()
pd.DataFrame(simple_train_dtm.toarray(), columns=vect.get_feature_names())

simple_test_dtm = vect.transform(["please don't call me"])
simple_test_dtm.toarray()
pd.DataFrame(simple_test_dtm.toarray(), columns=vect.get_feature_names())


-------------------------------------------------


from sklearn.feature_extraction.text import CountVectorizer
vect = CountVectorizer()
#vect = CountVectorizer(stop_words=['call','you'])
#vect = CountVectorizer(lowercase= False)

simple_train = ['call you tonight', 'Call me a cab', 'please call me... PLEASE!']

# learn the 'vocabulary' of the training data (occurs in-place)
vect.fit(simple_train)

# examine the fitted vocabulary
vect.get_feature_names()

# transform training data into a 'document-term matrix'
simple_train_dtm = vect.transform(simple_train)
print(simple_train_dtm)

# convert sparse matrix to a dense matrix
simple_train_dtm.toarray()


# examine the vocabulary and document-term matrix together
pd.DataFrame(simple_train_dtm.toarray(), columns=vect.get_feature_names())

# example text for model testing
simple_test = ["please don't call me"]

# transform testing data into a document-term matrix (using existing vocabulary)
simple_test_dtm = vect.transform(simple_test)
simple_test_dtm.toarray()

# examine the vocabulary and document-term matrix together
pd.DataFrame(simple_test_dtm.toarray(), columns=vect.get_feature_names())