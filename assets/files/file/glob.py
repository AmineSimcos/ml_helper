#  filename & path  for all files
import glob as gb
a = gb.glob(pathname= 'D:\\*.*') 
print(a)

--------------------------------------------

#  only filename for all files
import glob as gb
b = gb.glob1('D:\\' , '*.*' )
print(b)

--------------------------------------------

#  filename & path  for Specific file             
import glob as gb
a = gb.glob(pathname= 'D:\\*.pdf')
print(a)

--------------------------------------------

#  Only filename  for Specific file             
import glob as gb
b = gb.glob1('D:\\' , '*.pdf' )
print(b)