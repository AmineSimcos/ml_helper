import seaborn as sns
sns.set(style="darkgrid")
titanic = sns.load_dataset("titanic")
ax = sns.countplot(x="who", data=titanic,facecolor=(0, 0, 0, 0),linewidth=5,edgecolor=sns.color_palette("dark",3))