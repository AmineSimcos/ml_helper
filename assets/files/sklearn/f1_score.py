from sklearn.metrics import f1_score

f1_score(y_true, y_pred, average='micro')
#F1 = 2 * (precision * recall) / (precision + recall)

*
Sklearn - Metrics - recall_score (Sensitivity)
from sklearn.metrics import recall_score
 
recall_score(y_true, y_pred, average=None)

# (TP / float(TP + FN))   1 / 1+2 