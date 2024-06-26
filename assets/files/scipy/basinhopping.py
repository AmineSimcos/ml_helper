import matplotlib.pyplot as plt
import numpy as np
import scipy as sc

def f(x):
    return x**2 + 10*np.sin(x)

x = np.arange(-10, 10, 0.1)
plt.plot(x, f(x))
plt.show()

a = sc.optimize.basinhopping(f,  #function
                             x0 = 70 ,# a value to start
                             niter = 20 , #max no. if ierations
                             stepsize = .2 ,# step
                             disp = 0) # if 1 then display full details
print(a)

    fun: -7.945823375615284
 lowest_optimization_result:       fun: -7.945823375615284
 hess_inv: array([[0.08581448]])
      jac: array([0.])
  message: 'Optimization terminated successfully.'
     nfev: 33
      nit: 8
     njev: 11
   status: 0
  success: True
        x: array([-1.30644001])
                    message: ['requested number of basinhopping iterations completed successfully']
      minimization_failures: 0
                       nfev: 321
                        nit: 20
                       njev: 107
                          x: array([-1.30644001])

------------------------------------------


func = lambda x: np.cos(14.5 * x - 0.3) + (x + 0.2) * x
x0=[1.]

ret = sc.optimize.basinhopping(func, #function
                               x0 , # a value to start
                                # method = BFGS
                               minimizer_kwargs={"method": "BFGS"},
                               niter=200) #max no. if ierations
print("global minimum: x = %.4f, f(x0) = %.4f" % (ret.x, ret.fun))

global minimum: x = -0.1951, f(x0) = -1.0009

------------------------------------------

def func2d(x):
    f = np.cos(14.5*x[0]-0.3)+(x[1]+0.2)*x[1]+(x[0]+0.2)*x[0]
    df = np.zeros(2)
    return f, df

x0 = [1.0, 1.0]
ret = sc.optimize.basinhopping(
        func2d,
        x0, 
        minimizer_kwargs={"method":"L-BFGS-B", "jac":True},
        niter=2000)

print("global minimum: x = [%.4f, %.4f], f(x0) = %.4f" % 
      (ret.x[0],ret.x[1],ret.fun))

global minimum: x = [-0.1988, -0.1208], f(x0) = -1.0089