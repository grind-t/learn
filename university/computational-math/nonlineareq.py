import sys
sys.path.insert(1, '../automation/math/compmath')
from compmath.nonlineareq import newtons_method

f = lambda x : x**3 + 4*x - 3
interval = [0, 1]
eps = 0.0001
print(newtons_method(f, interval, eps))