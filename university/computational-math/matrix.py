import sys
import numpy as np
sys.path.insert(1, '../automation/math/algebra')
sys.path.insert(1, '../automation/math/compmath')
from linearalg.gauss import gauss, gaussr
from compmath.matrix import iterative_method

matrix = [
    [6135.1, 922.0, 1537.0, 9209.1], 
    [1.0, 316.5, 306.01, 613.02], 
    [304.1, 310.002, 1240.0, 2784.1]
]

g = gauss(matrix)
print('\nПрямой ход Гаусса: \n{}'.format(g))
print('\nОбратный ход Гаусса: \n{}'.format(gaussr(g)))
print('\nМетод простой итерации: \n{}'.format(iterative_method(matrix, 0.01)))