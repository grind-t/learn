import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, FFMpegWriter
import numpy as np
import math

def runge_kutta(f, t0, y0, h, interval):
    n = int((interval[1] - interval[0]) / h)
    m = len(f)
    f = np.array(f)
    t = np.array([t0])
    y = np.array([y0])
    for i in range(n):
        args = [t[i]]
        args.extend(y[i].tolist())
        k1 = h * np.array([f[j](*args) for j in range(m)])
        args = [t[i] + h/2]
        args.extend((y[i] + k1/2).tolist())
        k2 = h * np.array([f[j](*args) for j in range(m)])
        args = [t[i] + h/2]
        args.extend((y[i] + k2/2).tolist())
        k3 = h * np.array([f[j](*args) for j in range(m)])
        args = [t[i] + h]
        args.extend((y[i] + k3).tolist())
        k4 = h * np.array([f[j](*args) for j in range(m)])
        y = np.append(y, [y[i] + (k1 + 2*k2 + 2*k3 + k4)/6], axis=0)
        t = np.append(t, t[i] + h)
    return (y, t)

L0 = 1
k = 40
m = 1
g = 9.81
f = (
    lambda t, theta, L, w, z: w, # thetadot
    lambda t, theta, L, w, z: z, # Ldot
    lambda t, theta, L, w, z: -(2*z*w + g*math.sin(theta)) / L, # wdot
    lambda t, theta, L, w, z: L*w**2 - k/m*(L-L0) + g*math.cos(theta), # zdot
)
t0 = 0
y0 = (math.pi/3, 1, 0, 0)
h = 0.01
interval = (0, 20)
    
result = runge_kutta(f, t0, y0, h, interval)
theta = result[0][:,0]
L = result[0][:, 1]
x = L * np.sin(theta)
y = -L * np.cos(theta)
 
spring, bob = plt.plot([], [], [], [], 'ro')
plt.xlim(np.min(x), np.max(x))
plt.ylim(np.min(y), 0)
def animate(i):
    spring.set_data([0, x[i]], [0, y[i]])
    bob.set_data(x[i], y[i])

anim = FuncAnimation(plt.gcf(), animate, frames=2000, interval=10)
plt.show()