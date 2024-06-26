import pandas as pd
import numpy as np

myarray = np.array([[6,9,8,5,4,2],[0,2,5,6,3,9],
                    [8,5,4,1,2,3],[6,9,8,5,4,2],
                    [0,5,3,6,9,8],[8,7,4,5,2,3]])

rownames = ['a', 'b','c','d','e','f']
colnames = ['one', 'two', 'three','four','five','six']

df = pd.DataFrame(myarray, index=rownames, columns=colnames)
print(df)

   one  two  three  four  five  six
a    6    9      8     5     4    2
b    0    2      5     6     3    9
c    8    5      4     1     2    3
d    6    9      8     5     4    2
e    0    5      3     6     9    8
f    8    7      4     5     2    3

------------------------------------------
w = pd.Series({'a':1 ,'b':2 ,'c':3 ,'d':4 ,'e':5})
x = pd.Series({'a':6 ,'b':7 ,'c':8 ,'d':9 ,'e':10})
y = pd.Series({'a':11 ,'b':12 ,'c':13 ,'d':14 ,'e':15})
z = pd.Series({'a':16 ,'b':17 ,'c':18 ,'d':19 ,'e':20})
grades = pd.DataFrame({'Math':w,'Physics':x,'French':y,'Chemistry':z})

------------------------------------------

print(grades)

  Math  Physics  French  Chemistry
a     1        6      11         16
b     2        7      12         17
c     3        8      13         18
d     4        9      14         19
e     5       10      15         20

------------------------------------------

print(grades['Chemistry'])

a    16
b    17
c    18
d    19
e    20
Name: Chemistry, dtype: int64

------------------------------------------

print(grades.T)

            a   b   c   d   e
Math        1   2   3   4   5
Physics     6   7   8   9  10
French     11  12  13  14  15
Chemistry  16  17  18  19  20

------------------------------------------

print(grades.keys())

Index(['Math', 'Physics', 'French', 'Chemistry'], dtype='object')

------------------------------------------

print(grades.values)

[[ 1  6 11 16]
 [ 2  7 12 17]
 [ 3  8 13 18]
 [ 4  9 14 19]
 [ 5 10 15 20]]


------------------------------------------

print('Math' in grades.keys())

True

------------------------------------------

print('math' in grades.keys())

False

------------------------------------------

print(12 in grades.values)

True

------------------------------------------

print(55 in grades.values)

False

------------------------------------------

print(grades.stack())

a  Math          1
   Physics       6
   French       11
   Chemistry    16
b  Math          2
   Physics       7
   French       12
   Chemistry    17
c  Math          3
   Physics       8
   French       13
   Chemistry    18
d  Math          4
   Physics       9
   French       14
   Chemistry    19
e  Math          5
   Physics      10
   French       15
   Chemistry    20
dtype: int64

------------------------------------------

print(grades.iloc[:3, :2])

   Math  Physics
a     1        6
b     2        7
c     3        8

------------------------------------------

print(grades.loc['b':'c', 'Math':])

   Math  Physics  French  Chemistry
b     2        7      12         17
c     3        8      13         18

------------------------------------------

print(grades.loc[grades.Math >3])

  Math  Physics  French  Chemistry
d     4        9      14         19
e     5       10      15         20

------------------------------------------

print(grades.loc[grades.Math >3,['French' ,'Math']])

  French  Math
d      14     4
e      15     5

------------------------------------------

print(grades.columns)

Index(['Math', 'Physics', 'French', 'Chemistry'], dtype='object')

------------------------------------------

print(grades.index)

Index(['a', 'b', 'c', 'd', 'e'], dtype='object')

------------------------------------------

print(grades['Math'])

a    1
b    2
c    3
d    4
e    5
Name: Math, dtype: int64

------------------------------------------

print(grades.sort_values(['Math'],ascending= False))

  Math  Physics  French  Chemistry
e     5       10      15         20
d     4        9      14         19
c     3        8      13         18
b     2        7      12         17
a     1        6      11         16

------------------------------------------

print(grades.sort_values(['French'],ascending= True))

   Math  Physics  French  Chemistry
a     1        6      11         16
b     2        7      12         17
c     3        8      13         18
d     4        9      14         19
e     5       10      15         20


------------------------------------------

print(grades.max())

Math          5
Physics      10
French       15
Chemistry    20
dtype: int64

------------------------------------------

print(grades.min())

Math          1
Physics       6
French       11
Chemistry    16
dtype: int64

------------------------------------------

print(grades.mean())

Math          3.0
Physics       8.0
French       13.0
Chemistry    18.0
dtype: float64

------------------------------------------

print(grades.std())

Math         1.581139
Physics      1.581139
French       1.581139
Chemistry    1.581139
dtype: float64

------------------------------------------

print(grades['Math'].max())

5

------------------------------------------

print(grades['French'].min())

11

------------------------------------------

print(grades['Physics'].mean())

8

------------------------------------------

print(grades['Chemistry'].std())

1.58

------------------------------------------

dataset['Title'] = dataset['Title'].replace('Ms', 'Miss')

------------------------------------------

import numpy as np
import pandas as pd


a = np.array(["foo", "foo", "foo", "foo", "bar", "bar",
              "bar", "bar", "foo", "foo", "foo"], dtype=object)
b = np.array(["one", "one", "one", "two", "one", "one",
              "one", "two", "two", "two", "one"], dtype=object)
c = np.array(["dull", "dull", "shiny", "dull", "dull", "shiny",
              "shiny", "dull", "shiny", "shiny", "shiny"],
              dtype=object)
pd.crosstab(a, [b, c], rownames=['a'], colnames=['b', 'c'])

b	one	two
c	dull	shiny	dull	shiny
a				
bar	1	2	1	0
foo	2	2	1	2