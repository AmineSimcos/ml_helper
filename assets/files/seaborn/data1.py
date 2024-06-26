import seaborn as sns

data = sns.load_dataset('titanic')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (891, 15)
====================================
Index(['survived', 'pclass', 'sex', 'age', 'sibsp', 'parch', 'fare',
       'embarked', 'class', 'who', 'adult_male', 'deck', 'embark_town',
       'alive', 'alone'],
      dtype='object')
====================================
   survived  pclass     sex   age  sibsp  parch     fare embarked  class  \
0         0       3    male  22.0      1      0   7.2500        S  Third   
1         1       1  female  38.0      1      0  71.2833        C  First   
2         1       3  female  26.0      0      0   7.9250        S  Third   
3         1       1  female  35.0      1      0  53.1000        S  First   
4         0       3    male  35.0      0      0   8.0500        S  Third   

     who  adult_male deck  embark_town alive  alone  
0    man        True  NaN  Southampton    no  False  
1  woman       False    C    Cherbourg   yes  False  
2  woman       False  NaN  Southampton   yes   True  
3  woman       False    C  Southampton   yes  False  
4    man        True  NaN  Southampton    no   True  

----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('anscombe')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (44, 3)
====================================
Index(['dataset', 'x', 'y'], dtype='object')
====================================
  dataset     x     y
0       I  10.0  8.04
1       I   8.0  6.95
2       I  13.0  7.58
3       I   9.0  8.81
4       I  11.0  8.33

----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('attention')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (60, 5)
====================================
Index(['Unnamed: 0', 'subject', 'attention', 'solutions', 'score'], dtype='object')
====================================
   Unnamed: 0  subject attention  solutions  score
0           0        1   divided          1    2.0
1           1        2   divided          1    3.0
2           2        3   divided          1    3.0
3           3        4   divided          1    5.0
4           4        5   divided          1    4.0



----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('brain_networks')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))


data shape is :  (923, 63)
====================================
Index(['network', '1', '1.1', '2', '2.1', '3', '3.1', '4', '4.1', '5', '5.1',
       '6', '6.1', '6.2', '6.3', '7', '7.1', '7.2', '7.3', '7.4', '7.5', '8',
       '8.1', '8.2', '8.3', '8.4', '8.5', '9', '9.1', '10', '10.1', '11',
       '11.1', '12', '12.1', '12.2', '12.3', '12.4', '13', '13.1', '13.2',
       '13.3', '13.4', '13.5', '14', '14.1', '15', '15.1', '16', '16.1',
       '16.2', '16.3', '16.4', '16.5', '16.6', '16.7', '17', '17.1', '17.2',
       '17.3', '17.4', '17.5', '17.6'],
      dtype='object')
====================================
  network                  1                1.1                   2  \
0    node                  1                  1                   1   
1    hemi                 lh                 rh                  lh   
2     NaN                NaN                NaN                 NaN   
3       0  56.05574417114258  92.03103637695312   3.391575574874878   
4       1   55.5472526550293   43.6900749206543  -65.49598693847656   

----------------------------------------------------------


import seaborn as sns

data = sns.load_dataset('car_crashes')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (51, 8)
====================================
Index(['total', 'speeding', 'alcohol', 'not_distracted', 'no_previous',
       'ins_premium', 'ins_losses', 'abbrev'],
      dtype='object')
====================================
   total  speeding  alcohol  not_distracted  no_previous  ins_premium  \
0   18.8     7.332    5.640          18.048       15.040       784.55   
1   18.1     7.421    4.525          16.290       17.014      1053.48   
2   18.6     6.510    5.208          15.624       17.856       899.47   
3   22.4     4.032    5.824          21.056       21.280       827.34   
4   12.0     4.200    3.360          10.920       10.680       878.41   