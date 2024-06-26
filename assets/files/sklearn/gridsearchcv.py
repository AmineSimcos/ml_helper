from sklearn.model_selection import GridSearchCV

parameters = {'kernel':('linear', 'rbf'), 'C':[1,2,3,4,5]}
svc = svm.SVC(gamma="scale")
clf = GridSearchCV(svc, parameters, cv=5)
clf.fit(iris.data, iris.target)
sorted(clf.cv_results_.keys())
print('score : ' , clf.best_score_)
print('params : ' , clf.best_params_)
print('best : ' , clf.best_estimator_)

--------------------------------------------------

import pandas as pd
from sklearn import svm, datasets
from sklearn.model_selection import GridSearchCV
iris = datasets.load_iris()
parameters = {'kernel':('linear', 'rbf'), 'C':[1,2,3,4,5]}
svc = svm.SVC(gamma="scale")
clf = GridSearchCV(svc, parameters, cv=5)
clf.fit(iris.data, iris.target)

sorted(clf.cv_results_.keys())
pd.DataFrame(clf.cv_results_)[['mean_test_score', 'std_test_score', 'params' , 'rank_test_score' , 'mean_fit_time']]

print('score : ' , clf.best_score_)
print('params : ' , clf.best_params_)
print('best : ' , clf.best_estimator_)

--------------------------------------------------

import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris
from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import GridSearchCV

iris = load_iris()
X = iris.data
y = iris.target

knn = KNeighborsClassifier(n_neighbors=5)
scores = cross_val_score(knn, X, y, cv=10, scoring='accuracy')
print(scores)

k_range = list(range(1, 31))
print(k_range)

param_grid = dict(n_neighbors=k_range)
print(param_grid)

grid = GridSearchCV(knn, param_grid, cv=10, scoring='accuracy', return_train_score=False)
grid.fit(X, y)

pd.DataFrame(grid.cv_results_)[['mean_test_score', 'std_test_score', 'params']]

print(grid.cv_results_['params'])
print(grid.cv_results_['mean_test_score'])

grid_mean_scores = grid.cv_results_['mean_test_score']
print(grid_mean_scores)

plt.plot(k_range, grid_mean_scores)
plt.xlabel('Value of K for KNN')
plt.ylabel('Cross-Validated Accuracy')

print('score : ' , grid.best_score_)
print('params : ' , grid.best_params_)
print('best : ' , grid.best_estimator_)

--------------------------------------------------

import pandas as pd
from sklearn.datasets import load_iris
from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import GridSearchCV

iris = load_iris()


X = iris.data
y = iris.target

knn = KNeighborsClassifier(n_neighbors=5)
scores = cross_val_score(knn, X, y, cv=10, scoring='accuracy')
print(scores)

k_range = list(range(1, 31))
weight_options = ['uniform', 'distance']


param_grid = dict(n_neighbors=k_range, weights=weight_options)
print(param_grid)


grid = GridSearchCV(knn, param_grid, cv=10, scoring='accuracy', return_train_score=False)
grid.fit(X, y)

pd.DataFrame(grid.cv_results_)[['mean_test_score', 'std_test_score', 'params']]

print(grid.best_score_)
print(grid.best_params_)

knn = KNeighborsClassifier(n_neighbors=13, weights='uniform')
knn.fit(X, y)

knn.predict([[3, 5, 4, 2]])