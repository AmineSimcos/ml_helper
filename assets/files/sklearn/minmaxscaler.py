from sklearn.preprocessing import MinMaxScaler

scaler = MinMaxScaler()
#scaler = MinMaxScaler(feature_range = (1,5))

newdata = scaler.fit_transform(data)