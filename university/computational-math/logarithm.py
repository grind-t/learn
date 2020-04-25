import sys
sys.path.insert(1, '../automation/math/compmath')
from compmath.calc import ln

x = float(input('x: '))
print('ln({}): {}'.format(x, ln(x)))