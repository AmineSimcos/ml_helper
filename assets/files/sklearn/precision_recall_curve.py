from sklearn.metrics import precision_recall_curve

precision, recall, thresholds = precision_recall_curve(y_pred,y_true)
