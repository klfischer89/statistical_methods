import pandas as pd
import sidetable

Alter_df = pd.read_excel('Alter.xls')

# pd.crosstab(index=Alter_df['Alter'], columns='count')
# print(pd.crosstab(index=Alter_df['Alter'], columns='count'))

Alter_df["Alter"].value_counts().sort_index()
# print(Alter_df["Alter"].value_counts().sort_index())

Alter_df["Alter"].value_counts(normalize='TRUE').sort_index()
# print(Alter_df["Alter"].value_counts(normalize='TRUE').sort_index())

pd.concat([Alter_df["Alter"].value_counts().sort_index().rename('count'), 
           Alter_df["Alter"].value_counts(normalize='TRUE').mul(100).sort_index()], 
           axis=1)
# print(pd.concat([Alter_df["Alter"].value_counts().sort_index().rename('count'),
#                 Alter_df["Alter"].value_counts(normalize='TRUE').mul(100).sort_index().rename('percentage')],
#                 axis=1))

Alter_df.stb.freq(['Alter'], sort_cols='TRUE')
print(Alter_df.stb.freq(['Alter'], sort_cols='TRUE'))