import seaborn as sns
sns.set(style="whitegrid")

tips = sns.load_dataset("tips")

g = sns.catplot(x="sex", y="total_bill",
                hue="smoker", col="time",
                data=tips, kind="box",
                height=4, aspect=.7);