import math
import numpy as np
import random
import matplotlib.pyplot as plt
from scipy.stats import pearsonr
import math

def poissonDistribution(length, rate):
    x = []
    y = []
    exp = math.e ** -rate
    numerator = 1
    denominator = 1
    x.append(0)
    y.append(numerator / denominator * exp)
    for k in range(1, length):
        numerator *= rate
        denominator *= k
        x.append(k)
        y.append(numerator / denominator * exp)
    return (x, y)    

n = 4 # Количество каналов (обслуживающих устройстов).
#m = 2.42 # Количество заявок в очереди.
lamda = 3.001 # Интенсивность потока заявок (мин.).
mu = 1 # Интенсивность потока обслуживания.
tobs = 0 # Время обслуживания (мин.).
if (tobs != 0): mu = 1/tobs

rho = lamda / mu
nmin = rho+1 if rho.is_integer() else math.ceil(rho)

p = np.ones(n+1).tolist()
rho_power_n = 1
nfact = 1
for i in range(1, n+1):
    rho_power_n *= rho
    nfact *= i
    p[0] += rho_power_n / nfact
    p[i] = rho_power_n / nfact
p[0] += (rho_power_n * rho) / (nfact*(n-rho))
p[0] = 1 / p[0]
for i in range(1, len(p)): p[i] *= p[0]

Pqueue = (rho_power_n*rho) / ((n-rho)*nfact) * p[0]
k = rho
Lqueue = (rho_power_n*rho*p[0]) / (n*nfact*(1-rho/n)**2)
Lsys = Lqueue + rho
Tqueue = 1/lamda * Lqueue
Tsys = 1/lamda * Lsys


print(f'Минимальное число каналов: {nmin}')
for i in range(len(p)): print(f'Вероятность, что {i} каналов занятно: {p[i]}')
print(f'Вероятность очереди: {Pqueue}')
print(f'Среднее число заявок очереди: {Lqueue}')
print(f'Среднее время пребывания заявки в очереди: {Tqueue}')
print(f'Среднее число заявок в системе: {Lsys}')
print(f'Среднее время пребывания заявки в системе: {Tsys}')
print(f'Среднее число занятых каналов: {k}')
print(f'Коэффициент (доля) занятых каналов: {rho/n}')
print(f'Абсолютная пропускная способность узла: {lamda}')