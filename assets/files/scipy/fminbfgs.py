import matplotlib.pyplot as plt
import numpy as np
import scipy as sc
def f(x):
    return x**2 + 10*np.sin(x)

x = np.arange(-10, 10, 0.1)
plt.plot(x, f(x))
plt.show()
a = sc.optimize.fmin_bfgs(f, #function
                          x0 = 50 , # a value to start
                          epsilon = 10 ,  # step
                          disp = 1 , # if 1 then display full details
                          retall = 1 ,# if 1 then display all iterations
                          maxiter = 2 ) #max no. if ierations
print(a)

Warning: Maximum number of iterations has been exceeded.
         Current function value: 1239.195121
         Iterations: 2
         Function evaluations: 12
         Gradient evaluations: 4
(array([35.29788524]), [array([50]), array([44.95]), array([35.29788524])])


------------------------------------------


a = sc.optimize.fmin_bfgs(f, #function
                          x0 = 50 , # a value to start
                          epsilon = 0.1 ,  # step
                          disp = 1 , # if 1 then display full details
                          retall = 1 ,# if 1 then display all iterations
                          maxiter = 20 ) #max no. if ierations
print(a)

Warning: Desired error not necessarily achieved due to precision loss.
         Current function value: -7.931319
         Iterations: 7
         Function evaluations: 258
         Gradient evaluations: 82
(array([-1.3562454]), [array([50]), array([44.95]), array([35.01154003]), array([17.00942323]), array([-2.5328942]), array([-1.21948726]), array([-1.36193066]), array([-1.3562454])])