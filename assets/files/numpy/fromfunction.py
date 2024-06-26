np.fromfunction(lambda i: i**3, (5,))

array([ 0.,  1.,  8., 27., 64.])

------------------------------------------

np.fromfunction(lambda i: 3 * (i+5)**3, (5,))

array([ 375.,  648., 1029., 1536., 2187.])

------------------------------------------

np.fromfunction(lambda i,j: i+j, (4,5))

array([[0., 1., 2., 3., 4.],
       [1., 2., 3., 4., 5.],
       [2., 3., 4., 5., 6.],
       [3., 4., 5., 6., 7.]])

------------------------------------------

np.fromfunction(lambda i,j: 3*i*j, (4,5))

array([[ 0.,  0.,  0.,  0.,  0.],
       [ 0.,  3.,  6.,  9., 12.],
       [ 0.,  6., 12., 18., 24.],
       [ 0.,  9., 18., 27., 36.]])

------------------------------------------

np.fromfunction(lambda i,j,k: i+j+k, (2,3,4))

array([[[0., 1., 2., 3.],
        [1., 2., 3., 4.],
        [2., 3., 4., 5.]],

       [[1., 2., 3., 4.],
        [2., 3., 4., 5.],
        [3., 4., 5., 6.]]])

------------------------------------------

np.fromfunction(lambda i,j,k: (2*i)+(j**2)*k, (2,3,4))

array([[[ 0.,  0.,  0.,  0.],
        [ 0.,  1.,  2.,  3.],
        [ 0.,  4.,  8., 12.]],

       [[ 2.,  2.,  2.,  2.],
        [ 2.,  3.,  4.,  5.],
        [ 2.,  6., 10., 14.]]])

------------------------------------------

def powers(i):
    i = i**2
    return i

np.fromfunction(powers, (9,), dtype=int)

array([ 0,  1,  4,  9, 16, 25, 36, 49, 64], dtype=int32)

------------------------------------------

m,n = 20, 5
def f(i):
    return (i % n == 0)

np.fromfunction(f, (m,), dtype=int)

array([ True, False, False, False, False,  True, False, False, False,False,  True, False, False, False, False,  True, False, False,False, False])