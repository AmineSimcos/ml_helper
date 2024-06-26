import pandas as pd

index = [('California', 2000),('California', 2010), ('New York', 2000),('New York', 2010), ('Texas', 2000),('Texas', 2010)]
populations = [10000,15000,20000,25000,30000,35000]

index = pd.MultiIndex.from_tuples(index)
pop = pd.Series(populations, index=index)
pop = pop.reindex(index)

print(pop)

California  2000    10000
            2010    15000
New York    2000    20000
            2010    25000
Texas       2000    30000
            2010    35000
dtype: int64

------------------------------------------

print(pop[:, 2010])


California    15000
New York      25000
Texas         35000
dtype: int64

------------------------------------------

print(pop.unstack())

        2000   2010
California  10000  15000
New York    20000  25000
Texas       30000  35000

------------------------------------------

pop_df = pd.DataFrame({'total': pop,
                       'under18':[9267089, 9284094,4687374,
                                  4318033,5906301, 6879014]})
print(pop)

California  2000    10000
            2010    15000
New York    2000    20000
            2010    25000
Texas       2000    30000
            2010    35000
dtype: int64

------------------------------------------

print(pop_df)

         total  under18
California 2000  10000  9267089
           2010  15000  9284094
New York   2000  20000  4687374
           2010  25000  4318033
Texas      2000  30000  5906301
           2010  35000  6879014


------------------------------------------
df = pd.DataFrame(np.random.rand(4, 2),
                  index=[['a', 'a', 'b', 'b'],
                         [1, 2, 1, 2]],columns=['income', 'profit'])
print(df)

     income    profit
a 1  0.417937  0.922751
  2  0.844184  0.089013
b 1  0.742711  0.037690
  2  0.669350  0.059955

------------------------------------------

data = {('California', 2000): 10000,('California', 2010):15000,
        ('Texas', 2000): 20000,('Texas', 2010): 25000,
        ('New York', 2000): 30000,('New York', 2010): 35000}
df = pd.Series(data)
print(df)

California  2000    10000
            2010    15000
Texas       2000    20000
            2010    25000
New York    2000    30000
            2010    35000
dtype: int64

------------------------------------------

index = pd.MultiIndex.from_product([[2013, 2014],[1, 2]],
                                   names=['year', 'visit'])
columns = pd.MultiIndex.from_product([['Bob', 'Guido', 'Sue'],
                                      ['HR', 'Temp']],
                                    names=['subject', 'type'])
data = np.round(np.random.randn(4, 6))
health_data = pd.DataFrame(data, index=index, columns=columns)
print(health_data)

subject     Bob      Guido       Sue     
type         HR Temp    HR Temp   HR Temp
year visit                               
2013 1     -0.0 -1.0   2.0  2.0  0.0  1.0
     2     -1.0 -0.0   1.0 -1.0 -1.0 -0.0
2014 1      1.0  1.0   0.0  1.0 -0.0 -0.0
     2     -2.0  1.0   1.0 -1.0 -1.0  3.0


------------------------------------------

print(health_data['Guido', 'HR'])

year  visit
2013  1        1.0
      2       -0.0
2014  1       -0.0
      2        1.0
Name: (Guido, HR), dtype: float64

------------------------------------------

print(health_data.loc[:, ('Bob', 'HR')])

year  visit
2013  1       -0.0
      2        2.0
2014  1        1.0
      2        2.0
Name: (Bob, HR), dtype: float64

------------------------------------------

idx = pd.IndexSlice
print(health_data.loc[idx[:, 1], idx[:, 'HR']])

subject     Bob Guido  Sue
type         HR    HR   HR
year visit                
2013 1     -1.0  -1.0 -1.0
2014 1     -0.0   0.0  1.0
