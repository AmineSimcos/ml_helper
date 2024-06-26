dtype1 = dtype([('gender', '|S1'), ('height', 'f8')])
a = np.loadtxt('D:\\1.txt', dtype=dtype1, skiprows=9, usecols=(1,3))

------------------------------------------

a,b,c = np.loadtxt('D:\\0.txt', unpack=True,skiprows=3)

------------------------------------------

data = np.genfromtxt('D:\\0.txt', skip_header=1,
                  dtype=[('student','u8'),
                         ('gender','S1'),('black','f8'),
                         ('colour','f8')],delimiter=',',
                         missing_values='X')