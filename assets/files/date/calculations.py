from datetime import date
now = date.today()
a = date(1982, 2, 2)
z = now-a
print(z)

13693 days, 0:00:00

------------------------------------------

from datetime import date
now = date.today()

a = date(1982, 2, 2)
b = date(2011, 3, 15)
z = b-a

print(z)

10633 days, 0:00:00

------------------------------------------

from datetime import datetime
a = datetime(year=2011, month=3, day=15,
             hour=13 ,minute = 15, second = 9)

b = datetime(year=1982, month=2, day=2,
             hour=18 ,minute = 43, second = 12)
print(a)

2011-03-15 13:15:09


print(b)

1982-02-02 18:43:12

print(a-b)
10632 days, 18:31:57

------------------------------------------

import time
t = time.gmtime()
print(t)

time.struct_time(tm_year=2019, tm_mon=7, tm_mday=31, tm_hour=17, tm_min=45, tm_sec=36, tm_wday=2, tm_yday=212, tm_isdst=0)