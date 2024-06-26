data = pd.Series([0.25, 0.5, 0.75, 1.0])

0    0.25
1    0.50
2    0.75
3    1.00
dtype: float64

------------------------------------------

pd.Series([1,2,3,4], index=['a', 'b', 'c', 'd'])

a    1
b    2
c    3
d    4
dtype: int64

------------------------------------------

pd.Series({'a':1,'b':2,'c':3,'d':4})

a    1
b    2
c    3
d    4
dtype: int64

------------------------------------------

data = pd.Series((0.25, 0.5, 0.75, 1.0))
print(data.values)
print('---------------')
print(data.index)
print('---------------')
print(data.keys)

[0.25 0.5  0.75 1.  ]
---------------
RangeIndex(start=0, stop=4, step=1)
---------------
<bound method Series.keys of 0    0.25
1    0.50
2    0.75
3    1.00
dtype: float64>

------------------------------------------

data = pd.Series((3,6,9,8,5,4,2,6,3,5,8))
print(data.describe())

count    11.000000
mean      5.363636
std       2.292280
min       2.000000
25%       3.500000
50%       5.000000
75%       7.000000
max       9.000000
dtype: float64

------------------------------------------

data = pd.Series((3,6,9,8,5,4,2,6,3,5,8))
print(data.agg(['max','min','sum','mean','std']))

max      9.000000
min      2.000000
sum     59.000000
mean     5.363636
std      2.292280
dtype: float64

------------------------------------------

data = pd.Series((0.25, 0.5, 0.75, 1.0))

print(data[1])
print('---------------')
print(data[1:3])
print('---------------')
print(data[1:3:2])

0.5
---------------
1    0.50
2    0.75
dtype: float64
---------------
1    0.5
dtype: float64

------------------------------------------

data1 = pd.Series([1,2,3,4], index=['a', 'b', 'c', 'd'])
data2 = pd.Series({'a':1,'b':2,'c':3,'d':4})
print(data1['a'])
print(data2['b'])

1
2