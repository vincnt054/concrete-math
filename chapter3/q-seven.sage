def X(n, m, count):
    if n < m:
        return n + count
    return X(n-m, m, count+1)

def Xv1(n, m):
    return floor(n/m)+ n % m

def confirm(n, m):
    res1 = X(n, m, 0)
    res2 = Xv1(n, m)
    print(f"X({n},{m}): {res1}")
    print(f"Xv1({n},{m}): {res2}")

    return res1 == res2

def brute(n, m):
    for i in [1..n]:
        for j in [1..m]:
            if not confirm(i, j):
                print("Something went wrong!")
                break
