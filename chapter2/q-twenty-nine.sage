def T(n):
    sum = 0
    for k in [1..n]:
        sum = sum + (pow(-1,k)*k)/(4*pow(k,2)-1)
    return sum

def A(n):
    return pow(-1, n)/(4*(2*n+1)) - 1/4

def confirm(n):
    print(f"T({n}): {T(n)}")
    print(f"A({n}): {A(n)}")
