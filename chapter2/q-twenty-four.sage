def H(n):
    sum = 0
    for k in [1..n]:
        sum = sum + 1/k
    return sum

def T(n):
    sum = 0
    for k in [1..n]:
        sum = sum + H(k)/(pow(k,2) + 3*k+ 2)
    return sum

def A(n):
    return 1 - (H(n)+1)/(n+1)

def confirm(n):
    print(f"T({n}): {T(n)}")
    print(f"A({n}): {A(n)}")

    print(f"Precision: {float(A(n)-T(n))}")
