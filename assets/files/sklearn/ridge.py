from sklearn.linear_model import Ridge
reg = Ridge(alpha=0.01) 

# higher the alpha value, more restriction on the coefficients; low alpha > more generalization

reg.fit(X_train, y_train)
reg.score(X_train, y_train)
reg.score(X_test, y_test)
reg.coef_
reg.intercept_
reg.predict(X_test)