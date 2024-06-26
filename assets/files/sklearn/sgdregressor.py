import numpy as np
from sklearn.linear_model import SGDRegressor

#clf = linear_model.SGDRegressor( penalty = 'l2' , max_iter=1000, tol=1e-3 , loss = 'huber')
clf = linear_model.SGDRegressor( penalty = 'l2' , max_iter=1000, tol=1e-3 , loss = 'squared_loss')
#clf = linear_model.SGDRegressor( penalty = 'l1' , max_iter=1000, tol=1e-3 , loss = 'huber')
#clf = linear_model.SGDRegressor( penalty = 'l1' , max_iter=1000, tol=1e-3 , loss = 'squared_loss')

clf.fit(X, y)
clf.score(X,y)

print('Predict for ',z , ' is ' , clf.predict(z.reshape(1,-1)))
