from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33,  shuffle=True, random_state=42)

print('X_train \n' , X_train)
print('X_test \n' , X_test)
print('y_train \n' ,y_train)
print('y_test \n' , y_test)