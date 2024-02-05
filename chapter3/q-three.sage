def T(m, n, alpha):
    return floor((floor(m * alpha) * n)/ alpha)

def brute(m, n, ulimit):
    for i in [1..ulimit]:
        print(f"{i}: {T(m, n, e+i)}")
