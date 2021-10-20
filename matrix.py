# auto-apk tool was used to decompile the apk,
# and used 'Bytecode Viewer' to convert .smali into .class

import numpy as np
from scipy import linalg

allLHS = []
for i in range(0,26):
    r = 26*[0]
    if i<=23:
        r[i] = 1
        r[i+1] = 1
        r[i+2] = -1
    elif i==24:
        r[24] = 1
        r[25] = 1
        r[0] = -1
    elif i==25:
        r[25] = 1
        r[0] = 1
        r[1] = -1
    allLHS.append(r)
A = np.array(allLHS)
#print(A)

B = np.array([[112,
               105,
               86,
               99,
               180,
               118,
               -25,
               74,
               106,
               160,
               70,
               25,
               168,
               52,
               70,
               95,
               97,
               183,
               54,
               56,
               118,
               76,
               166,
               48,
               72,
               122]])

B = B.T
# #print(B) # RHS vector
X = linalg.solve(A, B)
print(X)

# results
'''104
   107
    99
   101
   114
   116
    50
    48
   123
    97
   114
    51
    95
   121
    48
   117
    95
   117
   115
    49
   110
   103
    95
   122
    51
   125'''

#    x0 + x1 - x2 = 112
#    x1 + x2 - x3 = 105
#    x2 + x3 - x4 = 86
#    x3 + x4 - x5 = 99
#    x4 + x5 - x6 = 180
#    x5 + x6 - x7 = 118
#    x6 + x7 - x8 = -25
#    x7 + x8 - x9 = 74
#   x8 + x9 - x10 = 106
#  x9 + x10 - x11 = 160
# x10 + x11 - x12 = 70
# x11 + x12 - x13 = 25
# x12 + x13 - x14 = 168
# x13 + x14 - x15 = 52
# x14 + x15 - x16 = 70
# x15 + x16 - x17 = 95
# x16 + x17 - x18 = 97
# x17 + x18 - x19 = 183
# x18 + x19 - x20 = 54
# x19 + x20 - x21 = 56
# x20 + x21 - x22 = 118
# x21 + x22 - x23 = 76
# x22 + x23 - x24 = 166
# x23 + x24 - x25 = 48
#  x24 + x25 - x0 = 72
#   x25 + x0 - x1 = 122