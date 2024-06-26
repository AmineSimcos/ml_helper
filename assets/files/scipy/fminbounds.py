import numpy as np
import scipy as sc

def f(x):
    return x**2 + 10*np.sin(x)

a = sc.optimize.fminbound(f,# function
                          x1 = -10,# first bound 
                          x2 = 10,#second bound
                          xtol = 0.01, # Max Tolerance
                          full_output = True,# details 
                          disp = 1 ) #show only numbers

print(a)
# Value of x , Value of y , 0 for convergance
# , number of iterations

(-1.3061484200406244, -7.94582288025181, 0, 11)

------------------------------------------

a = sc.optimize.fminbound(f,# function
                          x1 = -10,# first bound 
                          x2 = 10,#second bound
                          xtol = 0.01, # Max Tolerance
                          full_output = True,# details 
                          disp = 2 ) #show some details

print(a)
# Value of x , Value of y , 0 for convergance
# , number of iterations



Optimization terminated successfully;
The returned value satisfies the termination criteria
(using xtol =  0.01 )
(-1.3061484200406244, -7.94582288025181, 0, 11)

------------------------------------------
a = sc.optimize.fminbound(f,# function
                          x1 = -10,# first bound 
                          x2 = 10,#second bound
                          xtol = 0.01, # Max Tolerance
                          full_output = True,# details 
                          disp = 3 ) #show iterations

print(a)
# Value of x , Value of y , 0 for convergance
# , number of iterations

Func-count     x          f(x)          Procedure
    1       -2.36068     -1.46647        initial
    2        2.36068      12.6121        golden
    3       -5.27864      36.3032        golden
    4      -0.715181     -6.04606        parabolic
    5      -0.795481     -6.50921        parabolic
    6       -1.28322     -7.94269        parabolic
    7       -1.69477     -7.05101        golden
    8       -1.29818     -7.94543        parabolic
    9       -1.30615     -7.94582        parabolic
   10       -1.30948     -7.94577        parabolic
   11       -1.30282     -7.94575        parabolic

Optimization terminated successfully;
The returned value satisfies the termination criteria
(using xtol =  0.01 )
(-1.3061484200406244, -7.94582288025181, 0, 11)

------------------------------------------

def a(x):
    return (x)
def b(x):
    return (x**2)
def c(x):
    return (x**3)
def d(x):
    return (x**2 - 4*x + 1)
def e(x):
    return (x**3 + x**2 - 4*x - 3)
def f(x):
    return (1/x)

amin = sc.optimize.fminbound(a, -4, 4)
print(amin)
bmin = sc.optimize.fminbound(b, -4, 4)
print(bmin)
cmin = sc.optimize.fminbound(c, -4, 4)
print(cmin)
dmin = sc.optimize.fminbound(d, -4, 4)
print(dmin)
emin = sc.optimize.fminbound(e, -4, 4)
print(emin)
fmin = sc.optimize.fminbound(f, -4, 4)
print(fmin)


-3.999996435239639
-1.1102230246251565e-16
-3.999996435239639
2.0
0.868518564878511
-2.1499620000850844e-06