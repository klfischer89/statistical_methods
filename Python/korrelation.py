import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

Alter_df = pd.read_excel('Alter_Einkommen.xls')

plt.figure(figsize=(12,7))
sns.set_theme(font_scale=2)
sns.set_style('whitegrid')

sns.scatterplot(data=Alter_df, x='Alter', y='Einkommen', s=150)
plt.title('Der Zusammenhang zwischen Alter und Einkommen')
plt.xlabel('Alter in Jahren')
plt.ylabel('Einkommen in EUR')
# plt.show()

Alter_df['Alter'].corr(Alter_df['Einkommen'])
# print(Alter_df['Alter'].corr(Alter_df['Einkommen']))