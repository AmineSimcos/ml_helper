import seaborn as sns
sns.set(style="whitegrid")

tips = sns.load_dataset("tips")

tips["weekend"] = tips["day"].isin(["Sat", "Sun"])

ax = sns.boxplot(x="day", y="total_bill", data=tips)
ax = sns.swarmplot(x="day", y="total_bill", data=tips, color=".25")