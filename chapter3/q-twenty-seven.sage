def D(n, q):
    if n == 0:
        return 1

    return ceil(q*D(n-1, q)/(q-1))

def brute(n):
    for i in [1..n]:
        print(f"D({i}, 3) = {D(i, 3)}")
