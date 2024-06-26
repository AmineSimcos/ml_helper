from sklearn.linear_model import LinearRegression

reg = LinearRegression(fit_intercept=True, normalize=True)

reg.fit(X_train, y_train)

reg.score(X_train, y_train)
reg.score(X_test, y_test)

reg.coef_
reg.intercept_

reg.predict(X_test)

---------------------------

import numpy as np
from sklearn.linear_model import LinearRegression
X = np.array([[1, 1], [1, 2], [2, 2], [2, 3]])
- y = 1 * x_0 + 2 * x_1 + 3
y = np.dot(X, np.array([1, 2])) + 3
reg = LinearRegression(fit_intercept=True, normalize=True)
reg.fit(X, y)
reg.score(X, y)

reg.coef_
reg.intercept_
reg.predict(np.array([[3, 5]]))

---------------------------

from sklearn.metrics import mean_absolute_error
mean_absolute_error(y_test, y_pred)

from sklearn.metrics import mean_squared_error
mean_squared_error(y_test, y_pred)

from sklearn.metrics import median_absolute_error
median_absolute_error(y_test, y_pred)
