def T(n):
    sum = 0
    for k in [1..n]:
        sum = sum + falling_factorial(-2, k)/k
    return sum

def A(n):
    return pow(-1, n) * rising_factorial(2, n-1) - 1
