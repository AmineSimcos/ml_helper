df = pd.DataFrame({'key':['A','B','C','A','B','C'],
                   'data': range(6)},columns=['key', 'data'])
print(df.describe())

       data
count  6.000000
mean   2.500000
std    1.870829
min    0.000000
25%    1.250000
50%    2.500000
75%    3.750000
max    5.000000

------------------------------------------

print(df.groupby('key').sum())

    data
key      
A       3
B       5
C       7

------------------------------------------

print(df.groupby('key').describe())

     data                                         
    count mean      std  min   25%  50%   75%  max
key                                               
A     2.0  1.5  2.12132  0.0  0.75  1.5  2.25  3.0
B     2.0  2.5  2.12132  1.0  1.75  2.5  3.25  4.0
C     2.0  3.5  2.12132  2.0  2.75  3.5  4.25  5.0

------------------------------------------

print(df.groupby('key').describe().unstack())

           key
data  count  A      2.00000
             B      2.00000
             C      2.00000
      mean   A      1.50000
             B      2.50000
             C      3.50000
      std    A      2.12132
             B      2.12132
             C      2.12132
      min    A      0.00000
             B      1.00000
             C      2.00000
      25%    A      0.75000
             B      1.75000
             C      2.75000
      50%    A      1.50000
             B      2.50000
             C      3.50000
      75%    A      2.25000
             B      3.25000
             C      4.25000
      max    A      3.00000
             B      4.00000
             C      5.00000
dtype: float64

------------------------------------------

df = pd.DataFrame({'key': ['A', 'B', 'C', 'A', 'B', 'C'],
                   'data1': range(6),
                   'data2': np.random.randint(0, 10, 6)},
                    columns = ['key', 'data1', 'data2'])

df2 = df.groupby('key').aggregate({'data1': 'min','data2': 'max'})

   data1  data2
key              
A        0      9
B        1      5
C        2      7

------------------------------------------

def filter_func(x):
    return x['data2'].std() > 4

df2 = df.groupby('key').filter(filter_func)
print(df2)

  key  data1  data2
0   A      0      1
3   A      3      9

------------------------------------------
df2 = df.groupby('key').transform(lambda x: x**2)

   data1  data2
0      0      1
1      1     25
2      4     25
3      9     81
4     16      0
5     25     49
