import math
import numpy as np
from matplotlib import pyplot as plt

def grid(N, intervalX, intervalY):
    # Расчет координат точек сетки.
    x = np.linspace(intervalX[0], intervalX[1], N)
    y = np.linspace(intervalY[0], intervalY[1], N)
    X, Y = np.meshgrid(x, y)
    return (X, Y)

def velocityField(grid, pos, strength):
    # Расчет поля скоростей.
    u = (strength / (2 * math.pi) *
            (grid[0] - pos[0]) / ((grid[0] - pos[0])**2 + (grid[1] - pos[1])**2))
    v = (strength / (2 * math.pi) *
            (grid[1] - pos[1]) / ((grid[0] - pos[0])**2 + (grid[1] - pos[1])**2))
    return (u, v)

def streamf(grid, pos, strength):
    psi = strength / (2 * np.pi) * np.arctan2((grid[1] - pos[1]), (grid[0] - pos[0]))
    return psi

def sourceExample():
    g = grid(50, (-2, 2), (-1, 1))
    field = velocityField(g, (-1, 0), 5)
    plt.streamplot(g[0], g[1], field[0], field[1])
    plt.scatter(-1, 0, color='#CD2305', s = 80)
    plt.show()

def sinkExample():
    g = grid(50, (-2, 2), (-1, 1))
    field = velocityField(g, (1, 0), -5)
    plt.streamplot(g[0], g[1], field[0], field[1])
    plt.scatter(-1, 0, color='#CD2305', s = 80)
    plt.show()

def sourceSinkExample():
    g = grid(50, (-2, 2), (-1, 1))
    field1 = velocityField(g, (-1, 0), 5)
    field2 = velocityField(g, (1, 0), -5)
    field = (field1[0] + field2[0], field1[1] + field2[1])
    plt.streamplot(g[0], g[1], field[0], field[1])
    plt.scatter((1, -1), (0, 0), color='#CD2305', s = 80)
    plt.show()

def sourceSinkFreestreamExample():
    g = grid(50, (-4, 4), (-2, 2))
    sourceField = velocityField(g, (-1, 0), 5)
    sourcePsi = streamf(g, (-1, 0), 5)
    uInf = 1
    freestreamField = (uInf * np.ones((50, 50)), np.zeros((50 ,50)))
    freestreamPsi = uInf * g[1]
    
    field = (freestreamField[0] + sourceField[0], freestreamField[1] + sourceField[1])
    psi = freestreamPsi + sourcePsi
    plt.streamplot(g[0], g[1], field[0], field[1])
    plt.scatter(-1, 0, color='#CD2305', s=80)

    # Стагнация
    xStagnation = -1 - 5 / (2 * math.pi * uInf)
    yStagnation = 0
    plt.scatter(xStagnation, yStagnation, color='g', s=80)
    plt.contour(g[0], g[1], psi, 
               levels=[-5 / 2, 5 / 2], 
               colors='#CD2305', linewidths=2, linestyles='solid')
    plt.show()

sourceSinkFreestreamExample()