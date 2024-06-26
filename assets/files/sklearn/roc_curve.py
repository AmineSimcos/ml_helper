from sklearn import metrics

fpr, tpr, thresholds = metrics.roc_curve(y, scores, pos_label=2)


----------------------------------------------

import numpy as np
from sklearn import metrics
y =      np.array([1    , 1     , 2     , 2])
scores = np.array([0.1  , 0.4   ,   0.35, 0.8])
fpr, tpr, thresholds = metrics.roc_curve(y, scores, pos_label=2)



fpr 		:	array([0. , 0. , 0.5, 0.5, 1. ])
tpr 		:	Out[3]: array([0. , 0.5, 0.5, 1. , 1. ])
thresholds  	:	Out[4]: array([1.8 , 0.8 , 0.4 , 0.35, 0.1 ])
 
fpr, tpr, thresholds = metrics.roc_curve(y_test, y_pred_prob)
plt.plot(fpr, tpr)
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.0])
plt.title('ROC curve for diabetes classifier')
plt.xlabel('False Positive Rate (1 - Specificity)')
plt.ylabel('True Positive Rate (Sensitivity)')
plt.grid(True)