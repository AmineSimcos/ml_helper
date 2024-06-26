x = pd.Index([2,3,5,7,11])
print(x)

Int64Index([2, 3, 5, 7, 11], dtype='int64')

------------------------------------------
a = pd.Index([1, 3, 5, 7, 9])
b = pd.Index([2, 3, 5, 7, 11])
print(a)
print(b)
print(a & b)
print(a | b)
print(a ^ b)

Int64Index([1, 3, 5, 7, 9], dtype='int64')
Int64Index([2, 3, 5, 7, 11], dtype='int64')
Int64Index([3, 5, 7], dtype='int64')
Int64Index([1, 2, 3, 5, 7, 9, 11], dtype='int64')
Int64Index([1, 2, 9, 11], dtype='int64')
