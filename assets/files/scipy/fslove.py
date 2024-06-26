import scipy as sc
def f(x):
    return x**2 - 2*x -15

a = sc.optimize.fsolve(f,x0 = 10 , full_output=False )
print(a)

[5.0]

------------------------------------------


a = sc.optimize.fsolve(f,x0 = 10 , full_output=True )
print(a)

(array([5.]), {'nfev': 9, 'fjac': array([[-1.]]), 'r': array([-8.00003226]), 'qtf': array([-1.23520701e-07]), 'fvec': array([4.97379915e-13])}, 1, 'The solution converged.')