def radix(b, n):
    sum = 0
    for i in [0..n]:
        sum += b**i
    return sum
