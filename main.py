import pandas as pd

def load_raw_data():
    df = pd.read_excel('data/bronze/MS_12_2022_sample.xlsx')
    return df