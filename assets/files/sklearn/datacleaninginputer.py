import numpy as np
from sklearn.impute import SimpleImputer

data = [[1,2,np.nan],
        [3,np.nan,1],
        [5,np.nan,0],
        [np.nan,4,6 ],
        [5,0,np.nan],
        [4,5,5]]

imp = SimpleImputer(missing_values=np.nan, strategy='mean')
imp = imp.fit(data)

modifieddata = imp.transform(data)
print(modifieddata)

-------------------------------------------------

import numpy as np

from sklearn.impute import SimpleImputer

data = [[1,2,np.nan],
        [3,np.nan,1],
        [5,np.nan,0],
        [np.nan,4,6 ],
        [5,0,np.nan],
        [4,5,5]]

imp = SimpleImputer(missing_values=np.nan, strategy='median')
imp = imp.fit(data)


modifieddata = imp.transform(data)
print(modifieddata)

-------------------------------------------------

from sklearn.impute import SimpleImputer


data = [[1,2,0],
        [3,0,1],
        [5,0,0],
        [0,4,6],
        [5,0,0],
        [4,5,5]]


imp = SimpleImputer(missing_values=0, strategy='mean')
imp = imp.fit(data)


modifieddata = imp.transform(data)
print(modifieddata)