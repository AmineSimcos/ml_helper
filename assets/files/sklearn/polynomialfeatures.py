from sklearn.preprocessing import PolynomialFeatures


poly = PolynomialFeatures(degree=2 , include_bias = True)
poly.fit_transform(X)

-------------------------------------

poly = PolynomialFeatures(interaction_only=True)
poly.fit_transform(X)
