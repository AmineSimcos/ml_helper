import pandas as pd
data = ['peter', 'Paul', 'MARY', '15' , '  ' ]

print( pd.Series(data).str.len()) # length

0    5
1    4
2    4
3    2
4    2

------------------------------------------

print( pd.Series(data).str.startswith('p'))# is it start with "p"

0     True
1    False
2    False
3    False
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.endswith('Y')) #does is end with "y"

0    False
1    False
2     True
3    False
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.find('t')) # find this letter

0    2
1   -1
2   -1
3   -1
4   -1
dtype: int64

------------------------------------------

print( pd.Series(data).str.rfind('A'))# find it from right

0   -1
1   -1
2    1
3   -1
4   -1
dtype: int64

------------------------------------------

print( pd.Series(data).str.rjust(20))# adjust from right

0                   peter
1                    Paul
2                    MARY
3                      15
4                        
dtype: object

------------------------------------------

print( pd.Series(data).str.ljust(50))# adjust from left

0    peter                                         ...
1    Paul                                          ...
2    MARY                                          ...
3    15                                            ...
4                                                  ...
dtype: object

------------------------------------------

print( pd.Series(data).str.center(10))# make it center 

0      peter   
1       Paul   
2       MARY   
3        15    
4              
dtype: object

------------------------------------------

print( pd.Series(data).str.zfill(5))# fill zeros

0    peter
1    0Paul
2    0MARY
3    00015
4    000  
dtype: object

------------------------------------------

print( pd.Series(data).str.isupper())# is it all calpital

0    False
1    False
2     True
3    False
4    False
dtype: bool
	
------------------------------------------

print( pd.Series(data).str.islower())# is it lower ? 

0     True
1    False
2    False
3    False
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.istitle())# is like like "This"

0    False
1     True
2    False
3    False
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.isspace())# is it all spaces ? 

0    False
1    False
2    False
3    False
4     True
dtype: bool

------------------------------------------

print( pd.Series(data).str.isdigit())# is it numbers ?

0    False
1    False
2    False
3     True
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.isalpha())# is it all letters ?

0     True
1     True
2     True
3    False
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.isalnum())# is it not got any spaces ? 

0     True
1     True
2     True
3     True
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.isdecimal())# is it decimals ? 

0    False
1    False
2    False
3     True
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.isnumeric()) # is it number

0    False
1    False
2    False
3     True
4    False
dtype: bool

------------------------------------------

print( pd.Series(data).str.upper())# make it capital

0    PETER
1     PAUL
2     MARY
3       15
4         
dtype: object

------------------------------------------

print( pd.Series(data).str.capitalize())# make it like 'This'

0    Peter
1     Paul
2     Mary
3       15
4         
dtype: object

------------------------------------------

print( pd.Series(data).str.lower())# make it lower

0    peter
1     paul
2     mary
3       15
4         
dtype: object

------------------------------------------
print( pd.Series(data).str.swapcase())# switch capital & small

0    PETER
1     pAUL
2     mary
3       15
4         
dtype: object