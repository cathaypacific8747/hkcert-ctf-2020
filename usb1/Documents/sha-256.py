import hashlib
with open('villages.txt', 'r+') as f:
    data = f.read().split('\n')
    for k in range(len(data)):
        oldHash = data[k]
        for i in range(1337): # 1337
            oldHash = hashlib.sha256(oldHash.encode('ascii')).hexdigest()
        print(f'{data[k]}: {oldHash}')