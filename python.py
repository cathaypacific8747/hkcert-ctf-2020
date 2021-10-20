s3cr3t = input('A super secret:')

def gen_s3cr3t(sup3r_secret):
    balltse = 99999
    gigi = 8888
    chloe = 777
    baileys = 66
    super_s3cr3t = balltse & gigi
    super_s3cr3t = (super_s3cr3t | chloe) << 2
    super_s3cr3t = super_s3cr3t ^ baileys ^ 54
    print(super_s3cr3t)
    return str(sup3r_secret) == str(super_s3cr3t)


if gen_s3cr3t(s3cr3t):
    print('Congrats! The flag is hkcert20{%s}' % s3cr3t)
else:
    print('Try harder :-)')