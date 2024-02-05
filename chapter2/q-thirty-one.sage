def zeta(k, ulimit):
    sum = 0
    for i in [1..ulimit]:
        sum = sum + 1/pow(i, k)
    return sum

def T(ulimit):
    sum = 0
    for k in [2..ulimit]:
        sum = sum + zeta(k, ulimit)-1
    return float(sum)
