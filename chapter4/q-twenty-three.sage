def ruler_2(n):
    if n % 2 == 1:
        return 0
    return 1 + ruler(n/2)

def ruler_p(n, p):
    sum = 0
    k = 1
    while floor(n / pow(p, k)) != 0:
        sum += floor(n / pow(p, k))
        k += 1
    return sum
