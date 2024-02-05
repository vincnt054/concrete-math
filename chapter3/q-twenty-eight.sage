def a(n):
    if n == 0:
        return 1
    return a(n-1) + floor(sqrt(a(n-1)))
