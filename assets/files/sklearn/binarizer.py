from sklearn.preprocessing import Binarizer


transformer = Binarizer(threshold=1.5 ) 
transformer.fit(X)
transformer.transform(X)