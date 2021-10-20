# Challenge written by Mystiz.

import base64
import hashlib
import os
import random

#from secret import flag

def parse_pbox(payload):
    return list(map(int, payload[1:-1].split(',')))


def permutate(payload, pbox):
    return bytes([payload[x] for x in pbox])


class Server:
    def __init__(self, password):
        assert len(password) == 16
        self.password = password

    def preauth(self):
        pbox = list(range(20))
        salt = os.urandom(4)
        random.shuffle(pbox)
        return pbox, salt

    def auth(self, pbox, salt, hashed_password):
        permutated_password = permutate(self.password + salt, pbox)
        return hashlib.sha256(permutated_password).hexdigest() == hashed_password


class Client:
    def __init__(self, password):
        self.password = password

    def spy(self, pbox, salt):
        assert len(set(pbox)) == 20
        assert len(salt) == 4       # 4 characters
        password = self.password
        print(password)
        print(password+salt)
        permutated_password = permutate(password + salt, pbox) # for integer in pbox, return the index of (password+salt
        print(permutated_password)

        hashed_password = hashlib.sha256(permutated_password).hexdigest()
        print(f'[hash] {hashed_password}')


def main():
    password = base64.b64encode(os.urandom(12)) # secret

    s = Server(password)
    c = Client(password)

    for _ in range(10):
        command = input('[cmd] ')
        #try:
        if command == 'spy':
            pbox = parse_pbox(input('[pbox] '))     # 20 unique integers, separated by ",", first and last character is discarded
                                                    # will be accessed by password+salt
                                                    # 
                                                    # [0,-20,1,-19,2,-18,3,-17,4,-16,5,-15,-1,-2,-3,-4,16,17,18,19]
                                                    # [6,-14,7,-13,8,-12,9,-11,10,-10,11,-9,-1,-2,-3,-4,16,17,18,19]
                                                    # [12,-8,13,-7,14,-6,15,-5,0,-20,1,-19,-1,-2,-3,-4,16,17,18,19]
                                                    # 
            salt = base64.b64decode(input('[salt] ')) # 4 characters encoded in base64
                                                      # X19fXw==
                                                      # 4 spaces.
            c.spy(pbox, salt)
        elif command == 'auth':
            pbox, salt = s.preauth()
            print(f'[pbox] {pbox}')
            print(f'[salt] {base64.b64encode(salt).decode()}')
            hashed_password = input('[hash] ')
            if not s.auth(pbox, salt, hashed_password):
                raise Exception('No!')
            print(f'[flag] YOOO')
        # except:
        #     print('no way!')


if __name__ == '__main__':
    main()
