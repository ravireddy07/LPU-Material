def hash1(n):
    ret = [0]*24
    for i in range(len(n)):
        ret[i%24] += ord(n[i])
    return "".join([chr(i%31 + 95) for i in ret])

hash1('Ravi Reddy');
