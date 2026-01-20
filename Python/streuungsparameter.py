import pandas as pd

Alter_df = pd.read_excel('Alter.xls')

Alter_df['Alter'].max() - Alter_df['Alter'].min()
# print(Alter_df['Alter'].max() - Alter_df['Alter'].min())

Alter_df['Alter'].var(ddof=0)
# print(Alter_df['Alter'].var(ddof=0))

Alter_df['Alter'].var()
# print(Alter_df['Alter'].var())

Alter_df['Alter'].std()
# print(Alter_df['Alter'].std())

Alter_df['Alter'].std(ddof=0)
# print(Alter_df['Alter'].std(ddof=0))

Alter_df['Alter'].quantile(.25)
Alter_df['Alter'].quantile(.50)
Alter_df['Alter'].quantile(.75)
Alter_df['Alter'].quantile(.20)
Alter_df['Alter'].quantile(.80)
# print(Alter_df['Alter'].quantile(.25))
# print(Alter_df['Alter'].quantile(.50))
# print(Alter_df['Alter'].quantile(.75))
# print(Alter_df['Alter'].quantile(.20))
# print(Alter_df['Alter'].quantile(.80))

Alter_df['Alter'].quantile(.80) - Alter_df['Alter'].quantile(.20)
Alter_df['Alter'].quantile(.75) - Alter_df['Alter'].quantile(.25)
# print(Alter_df['Alter'].quantile(.80) - Alter_df['Alter'].quantile(.20))
# print(Alter_df['Alter'].quantile(.75) - Alter_df['Alter'].quantile(.25))

Alter_df['Alter'].quantile(.80) / Alter_df['Alter'].quantile(.20)
# print(Alter_df['Alter'].quantile(.80) / Alter_df['Alter'].quantile(.20))