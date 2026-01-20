import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
from quantecon import lorenz_curve
from quantecon import gini_coefficient
# import quantecon.inequality as ineq

PV_df = pd.read_excel('PV_Anbieter.xls')

PV_Umsatz = PV_df['Umsatz'].to_numpy()
f_vals, l_vals = lorenz_curve(PV_Umsatz)

sns.set_style('whitegrid')

fig, ax = plt.subplots()
ax.plot(f_vals, l_vals, label='Lorenzkurve, PV Markt')
ax.plot(f_vals, f_vals, label='Gleichverteilungskurve')
ax.legend()
# plt.show()

gini_coefficient(PV_Umsatz)
# print(gini_coefficient(PV_Umsatz))

np.sum(PV_Umsatz)
# print(np.sum(PV_Umsatz))

PV_Umsatz[-1]
# print(PV_Umsatz[-1])
PV_Umsatz[-2]
# print(PV_Umsatz[-2])
PV_Umsatz[-1]/np.sum(PV_Umsatz) + PV_Umsatz[-2]/np.sum(PV_Umsatz)
# print(PV_Umsatz[-1]/np.sum(PV_Umsatz) + PV_Umsatz[-2]/np.sum(PV_Umsatz))