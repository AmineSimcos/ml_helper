import seaborn as sns
import matplotlib.pyplot as plt

sns.set(style="ticks", color_codes=True)
tips = sns.load_dataset("tips")

kws = dict(s=50, linewidth=.5, edgecolor="w")
g = sns.FacetGrid(tips, col="sex", hue="time", palette="Set1",
                  hue_order=["Dinner", "Lunch"])
g = (g.map(plt.scatter, "total_bill", "tip", **kws).add_legend())