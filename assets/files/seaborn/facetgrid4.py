import seaborn as sns
import matplotlib.pyplot as plt
sns.set(style="ticks", color_codes=True)


att = sns.load_dataset("attention")
g = sns.FacetGrid(att, col="subject", col_wrap=5, height=1.5)
g = g.map(plt.plot, "solutions", "score", marker=".")