import seaborn as sns

data = sns.load_dataset('diamonds')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (53940, 10)
====================================
Index(['carat', 'cut', 'color', 'clarity', 'depth', 'table', 'price', 'x', 'y',
       'z'],
      dtype='object')
====================================
   carat      cut color clarity  depth  table  price     x     y     z
0   0.23    Ideal     E     SI2   61.5   55.0    326  3.95  3.98  2.43
1   0.21  Premium     E     SI1   59.8   61.0    326  3.89  3.84  2.31
2   0.23     Good     E     VS1   56.9   65.0    327  4.05  4.07  2.31
3   0.29  Premium     I     VS2   62.4   58.0    334  4.20  4.23  2.63
4   0.31     Good     J     SI2   63.3   58.0    335  4.34  4.35  2.75

----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('dots')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (848, 5)
====================================
Index(['align', 'choice', 'time', 'coherence', 'firing_rate'], dtype='object')
====================================
  align choice  time  coherence  firing_rate
0  dots     T1   -80        0.0    33.189967
1  dots     T1   -80        3.2    31.691726
2  dots     T1   -80        6.4    34.279840
3  dots     T1   -80       12.8    32.631874
4  dots     T1   -80       25.6    35.060487


----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('exercise')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (90, 6)
====================================
Index(['Unnamed: 0', 'id', 'diet', 'pulse', 'time', 'kind'], dtype='object')
====================================
   Unnamed: 0  id     diet  pulse    time  kind
0           0   1  low fat     85   1 min  rest
1           1   1  low fat     85  15 min  rest
2           2   1  low fat     88  30 min  rest
3           3   2  low fat     90   1 min  rest
4           4   2  low fat     92  15 min  rest


----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('flights')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (144, 3)
====================================
Index(['year', 'month', 'passengers'], dtype='object')
====================================
   year     month  passengers
0  1949   January         112
1  1949  February         118
2  1949     March         132
3  1949     April         129
4  1949       May         121

----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('fmri')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (1064, 5)
====================================
Index(['subject', 'timepoint', 'event', 'region', 'signal'], dtype='object')
====================================
  subject  timepoint event    region    signal
0     s13         18  stim  parietal -0.017552
1      s5         14  stim  parietal -0.080883
2     s12         18  stim  parietal -0.081033
3     s11         18  stim  parietal -0.046134
4     s10         18  stim  parietal -0.037970


----------------------------------------------------------

import seaborn as sns

data = sns.load_dataset('gammas')

print('data shape is : ' , data.shape)
print('====================================')
print(data.columns)
print('====================================')
print(data.head(5))

data shape is :  (6000, 4)
====================================
Index(['timepoint', 'ROI', 'subject', 'BOLD signal'], dtype='object')
====================================
   timepoint  ROI  subject  BOLD signal
0        0.0  IPS        0     0.513433
1        0.0  IPS        1    -0.414368
2        0.0  IPS        2     0.214695
3        0.0  IPS        3     0.814809
4        0.0  IPS        4    -0.894992

