from sklearn.preprocessing import Normalizer

#transformer = Normalizer(norm='l1' ) #the max is each row sum
#transformer = Normalizer(norm='l2' ) #the max is each row square sum
transformer = Normalizer(norm='max' ) #the max is each row max value

transformer.fit(X).
transformer.transform(X)