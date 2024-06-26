from sklearn.feature_selection import SelectPercentile, chi2

X_new = SelectPercentile(score_func =chi2, percentile=10).fit_transform(X, y)

---------------------------------------------

from sklearn.datasets import load_digits
from sklearn.feature_selection import SelectPercentile, chi2
X, y = load_digits(return_X_y=True)
X.shape

X_new = SelectPercentile(score_func =chi2, percentile=10).fit_transform(X, y)

print(X_new.shape)

---------------------------------------------

from sklearn.datasets import load_breast_cancer
from sklearn.feature_selection import SelectPercentile   , chi2 
 
data = load_breast_cancer()
X = data.data
y = data.target
X.shape
sel = SelectPercentile(score_func = chi2 , percentile = 20).fit_transform(X,y)
sel.shape


-----------------------


from sklearn.datasets import load_digits
from sklearn.feature_selection import SelectPercentile, chi2
X, y = load_digits(return_X_y=True)
X.shape

X_new = SelectPercentile(score_func =chi2, percentile=10)
X_new.fit(X, y)
selected = X_new.transform(X)
X_new.get_support()