import paramiko
from paramiko import rsakey
import hashlib

kf = open("id_rsa", "r")

key = 'Pak Sha Tsuen'.encode('utf-8')
for i in range(1337):
    key = hashlib.sha256(key.encode('utf-8')).hexdigest()
print(key)

#dlist = ["foo", "bar", "foobar", "klunssi", "xyzzy"]
# villages = [
#     'isochk',
#     'Kat Hing Wai',
#     'Tsang Tai Uk',
#     'Sheung Shui Wai',
#     'Fanling Wai',
#     'Nga Tsin Wai Tsuen',
#     'Ching Wai',
#     'Hung Leng',
#     'San Uk Tsai',
#     'Tan Chuk Hang Lo Wai',
#     'Lo Wai',
#     'Ma Wat Wai',
#     'San Wai',
#     'Tung Kok Wai',
#     'Wing Ning Wai',
#     'Ha Wo Hang',
#     'Kuk Po Lo WWai',
#     'Ma Tseuk Leng San Uk Ha',
#     'Man Uk Pin',
#     'Sheung Wo Han',
#     'Hakka Wai',
#     'Ho Sheung Heung Lo Wai',
#     'Ping Kong',
#     'Tai Tau Leng',
#     'Wai Loi Tsuen',
#     'Heuing Yuen Wai',
#     'Muk Wu',
#     'Tsang Tai Uk',
#     'Chik CHuen Wai',
#     'Tin Sam Wai',
#     'Kei Ling Ha Lo Wai',
#     'Chung Sum Wai',
#     'Fui Sha Wai',
#     'Pan Chung',
#     'Tai Po Tau Shui Wai',
#     'Sam Tung Uk',
#     'Chung Uk Tsuen',
#     'Lam Tei Tsuen',
#     'Nai Wai',
#     'Sun Fung Wai',
#     'Tsing CHuen Wai',
#     'Tsuen Mun San Tsuen',
#     'Tuen Tsz Wai',
#     'Nga Tsin Wai Tsuen',
#     'Mong Tseng Wai',
#     'San Wai',
#     'Sha Kong Wai',
#     'Sik Kong Wai',
#     'Tseung Kong Wai',
#     'Tin Sam Tsuen',
#     'Kat Hing Wai',
#     'Tai Hong Wai',
#     'Wing Lung Wai',
#     'Kam Hing Wai',
#     'Sha Po Tsuen',
#     'Hop Shan Wai',
#     'Kiu Tau Wai',
#     'Fui Sha Wai',
#     'Sheung Cheung Wai',
#     'Shek Po Tsuen',
#     'Lam Hau Tsuen',
#     'Shan Ha Tsuen',
#     'Yan SHau Wai',
#     'Shek Wu Wai',
#     'Pok Wai',
#     'Man Tin Tsuen',
#     'Tin Liu Tsuen',
#     'Muk Kiu Tau Tsuen',
#     'Shui Tsiu San Tsuen',
#     'Pak Sha Tsuen',
#     'Shui Pin Wai',
#     'Chung Sam Wai',
#     'Tai Tseng Wai',
#     'Nam Pin Wai',
#     'Sai Pin Wai',
#     'Tai Wai Tsuen',
#     'Ying Lung Wai',
#     'Tai Kiu',
#     'Sai Tau Wai',
#     'Tsz Tin Wai',
#     'Pak Mong',
#     'Sha Lo Wan Tsuen',
#     'Wing Ning Tsuen',
#     'Chow Tin Tsuen',
#     'Lai Chi Wo',
#     'Sheung Yiu Village',
#     'Pak Sha O',
#     'Pak Sha O Ha Yeung',
#     'Tung Tau Tsuen',
#     'Wang Toi Shan Wing Ning Lei',
#     'Wing Ping Tsuen',
#     'Yeung Ka Tsuen',
#     'Ng Uk Tsuen'
# ]


# for village in villages:
#     kf.seek(0)
#     key = village
#     for i in range(1337):
#         key = hashlib.sha256(key.encode('ascii')).hexdigest()
#     try:
#         nk = rsakey.RSAKey.from_private_key(kf, password=key)
#         print("success", village, key)
#     except paramiko.ssh_exception.SSHException:
#         print("fail", village, key)