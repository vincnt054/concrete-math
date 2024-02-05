def N(m, n):
    if n == 1:
        return 1

    if m == 2:
        return (n*(n+1))/2

    return N(m-1, n) + N(m-1, n-1)

def reduced_N(m, n):
    c = 0
    for d in [1..m]:
        if m % d == 0:
            c += euler_phi(d) * pow(n, m/d)
    return 1/m * c


def unique_perm(m, n):
    print("[", end=' ')

    for i in [1..n]:
        print(f"{i}", end=' ')

    if m == 0:
        print("]")
        return
    unique_perm(m-1, n)

def confirm(m, n):
    print(f"N({m}, {n}): {N(m,n)}")
    print(f"reduced_N({m}, {n}): {reduced_N(m,n)}")
