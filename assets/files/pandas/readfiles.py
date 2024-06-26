import pandas as pd
df = pd.read_csv('train.csv')  

# show the first 5 lines
print(df.head())

# show the last 5 lines
print(df.tail())


# show number of non-nulls
print(df.info())
 
------------------------------------------

data=pd.read_csv('D:\\1.csv', index_col='SepalWidthCm')
print(data)

------------------------------------------

w = pd.Series({'a':1 ,'b':2 ,'c':3 ,'d':4 ,'e':5})
x = pd.Series({'a':6 ,'b':7 ,'c':8 ,'d':9 ,'e':10})
y = pd.Series({'a':11 ,'b':12 ,'c':13 ,'d':14 ,'e':15})
z = pd.Series({'a':16 ,'b':17 ,'c':18 ,'d':19 ,'e':20})
grades = pd.DataFrame({'Math':w,'Physics':x,'French':y,'Chemistry':z})
grades.to_csv('D:\\2.csv')

------------------------------------------

grades.to_excel('D:\\1.xls',sheet_name ='Sheet 1')

------------------------------------------

grades1 = pd.read_csv('D:\\2.csv')
grades2 = pd.read_excel('D:\\1.xls')

------------------------------------------

filename = 'D:\\2.csv'
names = ['a', 'b', 'c', 'd', 'e']
data = pd.read_csv(filename, names=names)
print(data)

------------------------------------------

from pandas import read_csv
from pandas import set_option
filename = "D:\\pima-indians-diabetes.csv"
names = ['preg', 'plas', 'pres', 'skin', 'test', 'mass', 'pedi', 'age', 'class']
data = read_csv(filename, names=names)
set_option('display.width', 100)
set_option('precision', 3)
description = data.describe()
print(description)

------------------------------------------

data = pd.read_csv(path, header=None, names=['Population', 'Profit'])

------------------------------------------

class_counts = data.groupby('class').size()
print(class_counts)

------------------------------------------

correlations = data.corr(method='pearson')
print(correlations)

------------------------------------------

skew = data.skew()
print(skew)