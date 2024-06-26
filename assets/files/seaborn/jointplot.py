import pandas as pd
import numpy as np
import seaborn as sns


data =np.random.multivariate_normal([0,0],[[5,2],[2,2]],size=2000)
data = pd.DataFrame(data, columns=['x', 'y'])
with sns.axes_style('white'):
    sns.jointplot("x", "y", data, kind='kde');

----------------------------------------------

data =np.random.multivariate_normal([0,0],[[5,2],[2,2]],size=2000)
data = pd.DataFrame(data, columns=['x', 'y'])

with sns.axes_style('white'):
    sns.jointplot("x", "y", data, kind='hex')

----------------------------------------------

# draw 2D graph for relationships

import pandas as pd
import seaborn as sns
%matplotlib inline
data = pd.read_csv("kc_house_data.csv")

plt.figure(figsize=(10,10))
sns.jointplot(x=data.lat.values, y=data.long.values, size=10)
plt.ylabel('Longitude', fontsize=12)
plt.xlabel('Latitude', fontsize=12)
plt.show()
sns.despine