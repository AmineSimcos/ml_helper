import pandas as pd
import numpy as np
import seaborn as sns


data =np.random.multivariate_normal([0,0],[[5,2],[2,2]],size=2000)
data = pd.DataFrame(data, columns=['x', 'y'])

for col in 'xy':
    sns.kdeplot(data[col], shade=True)

sns.distplot(data['x'])
sns.distplot(data['y'])