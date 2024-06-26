import pandas as pd

df1 = pd.DataFrame({'employee': ['Bob', 'Jake', 'Lisa', 'Sue'],
                    'group': ['Accounting', 'Engineering',
                              'Engineering', 'HR']})
df2 = pd.DataFrame({'employee': ['Lisa', 'Bob', 'Jake', 'Sue'],
                    'hire_date': [2004, 2008, 2012, 2014]})
df3 = pd.merge(df1, df2)
print(df3)

  employee        group  hire_date
0      Bob   Accounting       2008
1     Jake  Engineering       2012
2     Lisa  Engineering       2004
3      Sue           HR       2014

------------------------------------------

df4 = pd.DataFrame({'group': ['Accounting', 'Engineering', 'HR'],
                    'supervisor': ['Carly', 'Guido', 'Steve']})
df5 = pd.merge(df3, df4)

print(df4)

       group supervisor
0   Accounting      Carly
1  Engineering      Guido
2           HR      Steve

------------------------------------------

print(df5)

employee        group  hire_date supervisor
0      Bob   Accounting       2008      Carly
1     Jake  Engineering       2012      Guido
2     Lisa  Engineering       2004      Guido
3      Sue           HR       2014      Steve

------------------------------------------

df1 = pd.DataFrame({'employee': ['Bob', 'Jake', 'Lisa', 'Sue'],
                    'group': ['Accounting', 'Engineering', 
                              'Engineering', 'HR']})
df3 = pd.DataFrame({'name': ['Bob', 'Jake', 'Lisa', 'Sue'],
                    'salary': [70000, 80000, 120000, 90000]})
print(pd.merge(df1, df3, left_on="employee", right_on="name"))

  employee        group  name  salary
0      Bob   Accounting   Bob   70000
1     Jake  Engineering  Jake   80000
2     Lisa  Engineering  Lisa  120000
3      Sue           HR   Sue   90000

------------------------------------------

print(pd.merge(df1, df3, left_on="employee",
               right_on="name").drop('name', axis=1))

employee        group  salary
0      Bob   Accounting   70000
1     Jake  Engineering   80000
2     Lisa  Engineering  120000
3      Sue           HR   90000

------------------------------------------

df1 = pd.DataFrame({'name': ['Peter', 'Paul', 'Mary'],
                    'food': ['fish', 'beans', 'bread']},
                    columns=['name', 'food'])

df2 = pd.DataFrame({'name': ['Mary', 'Joseph'],
                    'drink': ['cola', '7 up']},
                    columns=['name', 'drink'])

df3 = pd.merge(df1, df2)

  name   food drink
0  Mary  bread  cola

------------------------------------------
df3 = pd.merge(df1, df2, how='inner')

name   food drink
0  Mary  bread  cola

------------------------------------------

df3 = pd.merge(df1, df2, how='outer')

    name   food drink
0   Peter   fish   NaN
1    Paul  beans   NaN
2    Mary  bread  cola
3  Joseph    NaN  7 up

------------------------------------------

df3 = pd.merge(df1, df2, how='right')

   name   food drink
0    Mary  bread  cola
1  Joseph    NaN  7 up

------------------------------------------
df3 = pd.merge(df1, df2, how='left')

  name   food drink
0  Peter   fish   NaN
1   Paul  beans   NaN
2   Mary  bread  cola