import sys
import numpy as np
import matplotlib.pyplot as plt
sys.path.insert(1, '../automation/math/compmath')
from compmath.interpolation import lagrange_polynomial

xArr = [-1.5, -0.75, 0, 0.75, 1.5]
yArr = [-14.1014, -0.931596, 0, 0.931596, 14.1014]
f = np.vectorize(lagrange_polynomial(xArr, yArr))
xs = np.arange(-1.5, 1.5, 0.1)
graph1 = np.tan(xs)
graph2 = f(xs)
plt.plot(graph1)
plt.plot(graph2)
plt.show()