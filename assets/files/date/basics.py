from datetime import date
now = date.today()
print(now)

2019-07-31

------------------------------------------

from datetime import date
now = date.today()
a = now.strftime("%m-%d-%y. %d %b %Y is a %A on the %d day of %B.")
print(a)

07-31-19. 31 Jul 2019 is a Wednesday on the 31 day of July.

------------------------------------------

from datetime import date
a = date(1982, 2, 2)
print(a)

1982-02-02