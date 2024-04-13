from sklearn.preprocessing import FunctionTransformer

def function1(z):
    return np.sqrt(z)

FT = FunctionTransformer(func = function1)
FT.fit(X)
newdata = FT.transform(X)
