from sklearn.linear_model import LinearRegression
reg = Lasso()
reg.fit(X_train, y_train)
reg.score(X_train, y_train)
reg.score(X_test, y_test)
reg.coef_
reg.intercept_
reg.predict(X_test)