from sklearn.metrics import confusion_matrix
cm = confusion_matrix(y_true, y_pred)
	
import seaborn as sns
sns.heatmap(cm, center=True,cmap='Blues_r')
plt.show()