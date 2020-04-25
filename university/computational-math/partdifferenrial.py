import sys
import numpy as np
from matplotlib.colors import Colormap, Normalize
import matplotlib.pyplot as plt
sys.path.insert(1, '../automation/math/compmath')
from compmath.partdifferential import finite_diff_method

T = finite_diff_method(1, 1, 0.00001, 21, 21, 21)
#print(T)
dx = 1 / (21 - 1)
dy = 1 / (21 - 1)
#for i in range(21):
#    y = [dy*i for k in range(21)]
#    plt.scatter([dx*j for j in range(21)], y, cmap='inferno')
plt.pcolormesh(np.array(T).transpose(), cmap=plt.get_cmap('inferno'))
plt.colorbar()
plt.show()