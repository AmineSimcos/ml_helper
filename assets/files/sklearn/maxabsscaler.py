from sklearn.preprocessing import MaxAbsScaler

transformer = MaxAbsScaler()
transformer.fit(X)
transformer.transform(X)