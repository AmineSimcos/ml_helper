import pandas as pd

df = pd.DataFrame({'country': ['russia', 'germany', 'australia','korea','germany']})

pd.get_dummies(df,prefix=['country'])
 


country_australia	country_germany	country_korea	country_russia
0	0	0	0	1
1	0	1	0	0
2	1	0	0	0
3	0	0	1	0
4	0	1	0	0

==========================================================

import pandas as pd

# df now has two columns: name and country
df = pd.DataFrame({
        'name': ['josef','michael','john','bawool','klaus'],
        'country': ['russia', 'germany', 'australia','korea','germany']
    })

# use pd.concat to join the new columns with your original dataframe
df = pd.concat([df,pd.get_dummies(df['country'], prefix='country')],axis=1)

# now drop the original 'country' column (you don't need it anymore)
df.drop(['country'],axis=1, inplace=True)

pd.get_dummies(df,dummy_na=True)


	country_australia	country_germany	country_korea	country_russia	name_bawool	name_john	name_josef	name_klaus	name_michael	name_nan
0	0	0	0	1	0	0	1	0	0	0
1	0	1	0	0	0	0	0	0	1	0
2	1	0	0	0	0	1	0	0	0	0
3	0	0	1	0	1	0	0	0	0	0
4	0	1	0	0	0	0	0	1	0	0