import hashlib
import time

dct = {
    'A': 10,
    'B': 11,
    'C': 12,
    'D': 13,
    'E': 14,
    'F': 15,
    'G': 16,
    'H': 17,
    'I': 18,
    'J': 19,
    'K': 20,
    'L': 21,
    'M': 22,
    'N': 23,
    'O': 24,
    'P': 25,
    'Q': 26,
    'R': 27,
    'S': 28,
    'T': 29,
    'U': 30,
    'V': 31,
    'W': 32,
    'X': 33,
    'Y': 34,
    'Z': 35
}

def addCheckDigit(s):
    rem = (324 + dct[s[0]]*8 + int(s[1])*7 + int(s[2])*6 + int(s[3])*5 + int(s[4])*4 + int(s[5])*3 + int(s[6])*2) % 11 # A=10
    if rem == 0:
        return f"{s}0"
    elif rem == 1:
        return f"{s}A"
    else:
        return f"{s}{11-rem}"

def getResult(t):
    for char in dct:
        for i in range(999999):
            seed = f"{t}{addCheckDigit(f'{char}{i:06}')}"
            b = hashlib.sha3_256(seed.encode('ascii')).digest()
            if b[:3] == b'\x81\x24\x58':
                print(f'{seed}: {b}')
                print(''.join('\\x{:02x}'.format(letter) for letter in b))
                return f'{t}: {seed}'

    return f'{t}'

for i in range(1000):
    print(getResult(f'{i:03}'))