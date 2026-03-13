import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('/content/sample_data/synthetic_ford_data_200.csv')
df.head()

# selecting the columns to be considered
columns = [
    'model',
    'year',
    'price',
    'transmission',
    'mileage',
    'fuelType'
]

#Printing the columns to be considered
df = df[columns]
df.head()

#To check if there are any null values

df.isnull()
#To review the statistics description, such as mean, count, std dev
df.describe()

df.info()
