import seaborn as sns
import matplotlib.pyplot as plt

sns.set(style="ticks", color_codes=True)
tips = sns.load_dataset("tips")

g = sns.FacetGrid(tips, col="time",  row="smoker")
g = g.map(plt.scatter, "total_bill", "tip", edgecolor="w")