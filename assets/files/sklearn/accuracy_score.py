from sklearn.metrics import accuracy_score
print(accuracy_score(y_true, y_pred)) # fraction of all Trues over everything
print(accuracy_score(y_true, y_pred, normalize=False)) #number of all Trues

#((TP + TN) / float(TP + TN + FP + FN))