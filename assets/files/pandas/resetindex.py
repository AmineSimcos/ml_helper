# importing pandas package 
import pandas as pd 

# making data frame from csv file 
data = pd.read_csv("employees.csv") 

# setting first name as index column 
data.set_index(["First Name"], inplace = True, 
					append = True, drop = True) 

data.head() 
 

  Gender Start Date Last Login Time  Salary  Bonus 
  First Name                                                       
0 Douglas       Male   8/6/1993        12:42 PM   97308    6.945   
1 Thomas        Male  3/31/1996         6:53 AM   61933    4.170   
2 Maria       Female  4/23/1993        11:17 AM  130590   11.858   
3 Jerry         Male   3/4/2005         1:00 PM  138705    9.340   
4 Larry         Male  1/24/1998         4:47 PM  101004    1.389 


=================================================

data.reset_index(inplace = True) 

print(data.head() )

 level_0 First Name  Gender Start Date Last Login Time  Salary  Bonus 
0        0    Douglas    Male   8/6/1993        12:42 PM   97308    6.945   
1        1     Thomas    Male  3/31/1996         6:53 AM   61933    4.170   
2        2      Maria  Female  4/23/1993        11:17 AM  130590   11.858   
3        3      Jerry    Male   3/4/2005         1:00 PM  138705    9.340   
4        4      Larry    Male  1/24/1998         4:47 PM  101004    1.389   
