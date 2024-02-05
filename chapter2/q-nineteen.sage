def T(n):
    if n == 0:
        return 5
    return (1/2) * (n*T(n-1)+ 3*factorial(n))

def S(n):
    return 3*factorial(n) + (2*factorial(n))/pow(2,n)
