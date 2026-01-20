import pandas as pd

Alter_df = pd.read_excel('Alter.xls')

Alter_df['Alter'].mode()
# print(Alter_df['Alter'].mode())

Alter_df['Alter'].median()
# print(Alter_df['Alter'].median())

Alter_df['Alter'].mean()
# print(Alter_df['Alter'].mean())