from sklearn.preprocessing import LabelEncoder

le = LabelEncoder()

le.fit(df['score'])
le.classes_
le.transform(df['score']) 
le.inverse_transform([2, 2, 1])

-----------------------------------


from sklearn.preprocessing import LabelEncoder
import pandas as pd
raw_data = {'patient': [1, 1, 1, 2, 2],
        'obs': [1, 2, 3, 1, 2],
        'treatment': [0, 1, 0, 1, 0],
        'score': ['strong', 'weak', 'normal', 'weak', 'strong']}
df = pd.DataFrame(raw_data, columns = ['patient', 'obs', 'treatment', 'score'])


print('Original dataframe is : \n' ,df )

# Create a label (category) encoder object
le = LabelEncoder()
# Fit the encoder to the pandas column
le.fit(df['score'])


print('classed found : ' , list(le.classes_))

print('equivilant numbers are : ' ,le.transform(df['score']) )

df['score'] = le.transform(df['score'])

print('Updates dataframe is : \n' ,df )

print('Inverse Transform  : ' ,list(le.inverse_transform([2, 2, 1])))

-----------------------------------

from sklearn.preprocessing import LabelEncoder
import pandas as pd

data = pd.read_csv('mall.csv')
data.head()
df = pd.DataFrame(data)
print('Original dataframe is : \n' ,df )
enc  = LabelEncoder()
enc.fit(df['Genre'])
print('classed found : ' , list(enc.classes_))

print('equivilant numbers are : ' ,enc.transform(df['Genre']) )

df['Genre Code'] = enc.transform(df['Genre'])
print('Updates dataframe is : \n' ,df )

print('Inverse Transform  : ' ,list(enc.inverse_transform([1,0,1,1,0,0])))