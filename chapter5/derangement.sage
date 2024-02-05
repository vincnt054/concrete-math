def factorial_derang(n):
    k = 0
    sum = 0
    while k <= n:
        sum += binomial(n, k) * Derangements(k).cardinality()
        k += 1
    return sum
