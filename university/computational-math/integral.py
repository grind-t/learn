import sys
import math
sys.path.insert(1, '../automation/math/compmath')
from compmath.integral import trapezoidal_rule, simpsons_rule

f = lambda x: math.sqrt(1 + 2*x**2 - x**3)
print(trapezoidal_rule(f, 1.2, 2, 0.001))
print(simpsons_rule(f, 1.2, 2, 0.001))