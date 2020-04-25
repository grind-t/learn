import math
import random
import numpy as np
from scipy.stats import pearsonr

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
    return [x, y]     

poisson = poissonDistribution(11, 3) # Распределение Пуассона.
requestsFreq = {i: round(poisson[1][i] * 1000) for i in range(11)} # Частоты появлений количества заявок.
requests = []
for i in range(1000):
    for j in range(11):
        if requestsFreq[j] - i > 0:
            requests.append(j)

channels = 4
mu = 1
busy = {0:0, 1:0, 2:0, 3:0, 4:0}
busyArr = []
queueValue = 0
queue = [0]

for request in requests:
    if queueValue + request <= mu*channels:
        busy[queueValue+request] += 1
        busyArr.append(queueValue+request)
    else:
        busy[mu*channels] += 1
        busyArr.append(mu*channels)
    if queueValue + request >= mu*channels:
        queueValue = queueValue + request - mu*channels
    else:
        queueValue = 0
    queue.append(queueValue)

lamda1 = 0
for i in range(len(requestsFreq)):
    lamda1 += i * requestsFreq[i]
lamda1 = lamda1 / sum(requestsFreq.values())

lamda2 = 0
for i in range (len(busy.keys())):
    lamda2 += i * busy[i]
lamda2 = lamda2 / sum(busy.values())

poisson2 = poissonDistribution(11, lamda2)

print(f'Первое распределение Пуассона: {poisson}')
print(f'Второе распределение Пуассона: {poisson2}')
print(f'Коэффициент Пирсона: {pearsonr(poisson[1], poisson2[1])}')

print(f'Случаи занятости каналов:\n {busy}')
for i in range(len(busy)):
    print(f'Вероятность занятости {i} каналов:\n {busy[i] / sum(busy.values())}')
print(f'Вероятность очереди {queue.count(0) / len(queue)}:')
print(f'Среднее число занятости каналов {sum(busyArr) / len(busyArr)}')
print(f'Средняя лямбда {lamda2}')
print(f'Среднее число заявок в очереди {sum(queue) / len(queue)}')
#print(poisson)
#print(requestsFreq)
#print(busy)
#print(lamda1)
#print(lamda2)