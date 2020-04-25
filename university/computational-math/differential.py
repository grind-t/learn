import sys
sys.path.insert(1, '../automation/math/compmath')
from compmath.differential import euler_method, rungekutta_method
import matplotlib.pyplot as plt
import numpy as np

f = lambda x, y :  x**2 - 2*y
x0 = 0
y0 = 1
h = 0.1
xy = euler_method(f, x0, y0, h)
print("\nМетод Эйлера:")
print(np.array(xy))
plt.plot(xy[0], xy[1])
xy = rungekutta_method(f, x0, y0, h)
print("\nМетод Рунге-Кутты:")
print(np.array(xy))
plt.plot(xy[0], xy[1])
plt.show()