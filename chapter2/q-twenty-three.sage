def T(n):
    sum = 0
    for k in [1..n]:
        sum = sum + (2*k+1)/(k*(k+1))
    return sum

def H(n):
    sum = 0
    for k in [1..n]:
        sum = sum + 1/k
    return sum

def A(n):
    return H(n) + H(n+1) - 1

def B(n):
    return 2*H(n) + 1/(n+1) - 1

def C(n):
    return 2*H(n+1) - (n+2)/(n+1)

def confirm(n):
    print(f"T({n}): {T(n)}")
    print(f"A({n}): {A(n)}")
    print(f"B({n}): {B(n)}")
    print(f"C({n}): {C(n)}")
