from sklearn.decomposition import TruncatedSVD

SVDModel = TruncatedSVD(algorithm='randomized', n_components=300)
X_SVD = SVDModel.fit_transform(X)
X_SVD.shape