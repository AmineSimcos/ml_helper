# random number from 0 to 1
import random as rn
a = rn.random()
print(a)
------------------------------------------
# random fraction from 1 to 20
import random as rn
a = rn.uniform(1,20)
print(a)
------------------------------------------
# random integer from 1 to 20
import random as rn
a = rn.randint(1,20)
print(a)
------------------------------------------
# random integer from 0 to 150
import random as rn
a = rn.randrange(150)
print(a)
------------------------------------------
# random integer from 0 to 150 with step 2 (even)
import random as rn
a =rn.randrange(0,20,2)
print(a)
------------------------------------------
# random choice
import random as rn
a =rn.choice(['a','b','c'])
print(a)
------------------------------------------
# random letter
import random as rn
a =rn.choice('sweet home alabama')
print(a)
------------------------------------------
# random 10 numbers from 0 to 200
import random as rn
a =rn.sample(range(200) ,10)
print(a)
------------------------------------------
# suffle it
import random as rn
items = [1,2,3,4,5,6]
rn.shuffle(items)
print (items)