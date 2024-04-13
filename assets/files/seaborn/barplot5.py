import seaborn as sns
sns.set(style="whitegrid")
tips = sns.load_dataset("tips")
ax = sns.barplot("size", y="total_bill", data=tips,
                  palette="Blues_d")