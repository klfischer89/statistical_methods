import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

Alter_df = pd.read_excel('Alter.xls')

sns.set_theme(rc={'figure.dpi':(150)})
sns.set_style('whitegrid')

# fig = Alter_df['Alter'].value_counts().sort_index().plot.bar(xlabel='Alter in Jahren')
# fig = Alter_df['Alter'].value_counts().sort_index().plot.barh(xlabel='Alter in Jahren')
# fig.set_title('Absolute Häufigkeiten (Alter)')

# fig2 = Alter_df['Alter'].value_counts(normalize='TRUE').sort_index().plot.bar(xlabel='Alter in Jahren')
# fig2 = Alter_df['Alter'].value_counts(normalize='TRUE').sort_index().plot.barh(xlabel='Alter in Jahren')
# fig2.set_title('Relative Häufigkeiten (Alter)')

# sns.countplot(data=Alter_df, y='Alter')

# abs_values = Alter_df['Alter'].value_counts().sort_index().values

# fig3 = sns.countplot(data=Alter_df, x='Alter')

# sns.despine(left='TRUE')

# fig3.axes.get_yaxis().set_visible(False)
# fig3.bar_label(container=fig3.containers[0], labels=abs_values)
# fig3.set_title('Absolute Häufigkeiten (Alter)')
# fig3.set_xlabel('Alter in Jahren')

# count = Alter_df['Alter'].value_counts().sort_index()
# fig4 = Alter_df['Alter'].value_counts().sort_index().plot.pie(colors=['#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#FFA502',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB',
#                                                                       '#0047AB'],
#                                                                       explode=[0.2 if i == 3 else 0 for i in range(len(count))])
# fig4.set_title('Absolute Häufigkeiten (Alter)')
# fig4.axes.get_yaxis().set_visible(False)

sns.boxplot(data=Alter_df, y='Alter', color='#0047AB')
plt.show()