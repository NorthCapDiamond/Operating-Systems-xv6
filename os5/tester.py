import pandas as pd
import matplotlib.pyplot as plt

file_name = input()
df_add = pd.read_csv(file_name)

plt.plot(df_add[df_add.columns[0]], df_add[df_add.columns[1]])
plt.xlabel(df_add.columns[0])
plt.ylabel(df_add.columns[1])
plt.grid(True)
plt.show()

