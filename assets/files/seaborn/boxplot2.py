import seaborn as sns
sns.set(style="whitegrid")
tips = sns.load_dataset("tips")

ax = sns.boxplot(x="day", y="total_bill", hue="smoker",data=tips, palette="Set3")