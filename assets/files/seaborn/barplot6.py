import seaborn as sns
sns.set(style="whitegrid")
tips = sns.load_dataset("tips")

tips["weekend"] = tips["day"].isin(["Sat", "Sun"])
ax = sns.barplot(x="day", y="total_bill", hue="weekend",
                  data=tips, dodge=False)