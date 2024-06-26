import pandas as pd
import numpy as np

df = pd.DataFrame(np.random.rand(5, 3), columns=['A', 'B', 'C'])

------------------------------------------

print(df)

       A         B         C
0  0.812828  0.580948  0.366799
1  0.485613  0.385624  0.807672
2  0.173618  0.408204  0.088218
3  0.890159  0.912091  0.699135
4  0.175149  0.987515  0.584848

------------------------------------------

print(df.corr())

       A         B         C
A  1.000000  0.140233  0.354490
B  0.140233  1.000000  0.335546
C  0.354490  0.335546  1.000000

------------------------------------------

print(df.skew())

A    0.112406
B    0.355110
C   -0.775038
dtype: float64

------------------------------------------

print(df.kurt())

A    2.056307
B   -1.332886
C    0.901516
dtype: float64

------------------------------------------
Example at Skew & Kurt
import numpy as np
import pandas as pd 

x = np.random.rand(100)

y = pd.Series(x)

print("Skewness: %f" %y.skew())
print("Kurtosis: %f" %y.kurt())

Skewness: 0.089297
Kurtosis: -1.092989

------------------------------------------

data = [{'square': i**2} for i in range(10)]
d = pd.DataFrame(data)
print(d)

   square
0       0
1       1
2       4
3       9
4      16
5      25
6      36
7      49
8      64
9      81

------------------------------------------

data = [{'square': i**2,'cube': i**3
         ,'root': i**0.5} for i in range(10)]
d = pd.DataFrame(data)
print(d)

  cube      root  square
0     0  0.000000       0
1     1  1.000000       1
2     8  1.414214       4
3    27  1.732051       9
4    64  2.000000      16
5   125  2.236068      25
6   216  2.449490      36
7   343  2.645751      49
8   512  2.828427      64
9   729  3.000000      81


------------------------------------------

d = pd.DataFrame([{'a':1,'b':2},{'a':3,'b':4},{'a':5,'b':6}])
print(d)

  a  b
0  1  2
1  3  4
2  5  6


------------------------------------------

d = pd.DataFrame([{'a':1,'b':2},{'b':3,'c':4},{'d':5,'e':6}])
print(d)

   a    b    c    d    e
0  1.0  2.0  NaN  NaN  NaN
1  NaN  3.0  4.0  NaN  NaN
2  NaN  NaN  NaN  5.0  6.0


------------------------------------------

d =pd.DataFrame(np.random.rand(3, 2),
                columns=['food', 'drink'],index=['a', 'b', 'c'])
print(d)

      food     drink
a  0.264028  0.281117
b  0.853268  0.383728
c  0.503981  0.009704


------------------------------------------

w = pd.Series({'a':1 ,'b':2 ,'c':3 ,'d':4 ,'e':5})
x = pd.Series({'a':6 ,'b':7 ,'c':8 ,'d':9 ,'e':10})
y = pd.Series({'a':11 ,'b':12 ,'c':13 ,'d':14 ,'e':15})
z = pd.Series({'a':16 ,'b':17 ,'c':18 ,'d':19 ,'e':20})
grades = pd.DataFrame({'Math':w,'Physics':x,'French':y,'Chemistry':z})
grades['Total'] = (grades['Math'] + grades['French'] + 
      grades['Chemistry']+ grades['Physics']) /100
print(grades)

  Math  Physics  French  Chemistry  Total
a     1        6      11         16   0.34
b     2        7      12         17   0.38
c     3        8      13         18   0.42
d     4        9      14         19   0.46
e     5       10      15         20   0.50


------------------------------------------

df = pd.DataFrame(np.random.rand(5, 3), columns=['A', 'B', 'C'])
result = (df['A'] + df['B']) / (df['C'] - 1)
print(df)
print(result)

        A         B         C
0  0.032145  0.287860  0.128617
1  0.596045  0.573912  0.441364
2  0.169894  0.668319  0.711420
3  0.698338  0.747781  0.918806
4  0.123422  0.127863  0.633767

0    -0.367238
1    -2.094308
2    -2.904608
3   -17.810604
4    -0.686134
dtype: float64


------------------------------------------

result = pd.eval("(df.A + df.B) / (df.C - 1)")
print(result)

0    -0.367238
1    -2.094308
2    -2.904608
3   -17.810604
4    -0.686134
dtype: float64


------------------------------------------

result = df.query('A < 0.5 and B < 0.5')
print(result)

         A         B         C
0  0.032145  0.287860  0.128617
4  0.123422  0.127863  0.633767


------------------------------------------

tmp1 = df.A < 0.5
tmp2 = df.B < 0.5
tmp3 = tmp1 & tmp2
result = df[tmp3]

print(result)

        A         B         C
0  0.032145  0.287860  0.128617
4  0.123422  0.127863  0.633767

------------------------------------------

result = df[(df.A < 0.5) & (df.B < 0.5)]

print(result)

      A         B         C
0  0.032145  0.287860  0.128617
4  0.123422  0.127863  0.633767

------------------------------------------

result = df[(df.A < 0.5) | (df.B < 0.5)]

print(result)

        A         B         C
0  0.032145  0.287860  0.128617
2  0.169894  0.668319  0.711420
4  0.123422  0.127863  0.633767

------------------------------------------

def make_df(cols, ind):
    data = {c: [str(c) + str(i) for i in ind] for c in cols}
    return pd.DataFrame(data, ind)

print(make_df('ABC', range(3)))

A   B   C
0  A0  B0  C0
1  A1  B1  C1
2  A2  B2  C2

------------------------------------------

data['bedrooms'].value_counts()  # count number of each value 

#example

import pandas as pd
%matplotlib inline
data = pd.read_csv("kc_house_data.csv")
data['bedrooms'].value_counts()


3     9824
4     6882
2     2760
5     1601
6      272
1      199
7       38
8       13
0       13
9        6
10       3
11       1
33       1
Name: bedrooms, dtype: int64

------------------------------------------

data['bedrooms'].value_counts().plot(kind='bar')  # draw it

#example

import pandas as pd
%matplotlib inline
data = pd.read_csv("kc_house_data.csv")
data['bedrooms'].value_counts().plot(kind='bar')


------------------------------------------

# to count numbers of nulls 

total = len(df_train.isnull())


# to know sum of nulls cells

total = df_train.isnull().sum()


# to put them in order

total = df_train.isnull().sum().sort_values(ascending=False)
