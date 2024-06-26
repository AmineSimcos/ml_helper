import seaborn as sns
sns.set(style="darkgrid")
titanic = sns.load_dataset("titanic")
g = sns.catplot(x="class", hue="who", col="survived",
                 data=titanic, kind="count",
                 height=4, aspect=.7);