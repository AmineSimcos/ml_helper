import seaborn as sns

data = sns.load_dataset('iris')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (150, 5)
====================================
Index(['sepal_length', 'sepal_width', 'petal_length', 'petal_width',
       'species'],
      dtype='object')
====================================
   sepal_length  sepal_width  petal_length  petal_width species
0           5.1          3.5           1.4          0.2  setosa
1           4.9          3.0           1.4          0.2  setosa
2           4.7          3.2           1.3          0.2  setosa
3           4.6          3.1           1.5          0.2  setosa
4           5.0          3.6           1.4          0.2  setosa

----------------------------------------------------------


import seaborn as sns

data = sns.load_dataset('mpg')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))


data shape is :  (398, 9)
====================================
Index(['mpg', 'cylinders', 'displacement', 'horsepower', 'weight',
       'acceleration', 'model_year', 'origin', 'name'],
      dtype='object')
====================================
    mpg  cylinders  displacement  horsepower  weight  acceleration  \
0  18.0          8         307.0       130.0    3504          12.0   
1  15.0          8         350.0       165.0    3693          11.5   
2  18.0          8         318.0       150.0    3436          11.0   
3  16.0          8         304.0       150.0    3433          12.0   
4  17.0          8         302.0       140.0    3449          10.5   

   model_year origin                       name  
0          70    usa  chevrolet chevelle malibu  
1          70    usa          buick skylark 320  
2          70    usa         plymouth satellite  
3          70    usa              amc rebel sst  
4          70    usa                ford torino  


----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('planets')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (1035, 6)
====================================
Index(['method', 'number', 'orbital_period', 'mass', 'distance', 'year'], dtype='object')
====================================
            method  number  orbital_period   mass  distance  year
0  Radial Velocity       1         269.300   7.10     77.40  2006
1  Radial Velocity       1         874.774   2.21     56.95  2008
2  Radial Velocity       1         763.000   2.60     19.84  2011
3  Radial Velocity       1         326.030  19.40    110.62  2007
4  Radial Velocity       1         516.220  10.50    119.47  2009


----------------------------------------------------------


import seaborn as sns

data = sns.load_dataset('tips')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))



data shape is :  (244, 7)
====================================
Index(['total_bill', 'tip', 'sex', 'smoker', 'day', 'time', 'size'], dtype='object')
====================================
   total_bill   tip     sex smoker  day    time  size
0       16.99  1.01  Female     No  Sun  Dinner     2
1       10.34  1.66    Male     No  Sun  Dinner     3
2       21.01  3.50    Male     No  Sun  Dinner     3
3       23.68  3.31    Male     No  Sun  Dinner     2
4       24.59  3.61  Female     No  Sun  Dinner     4


 
 