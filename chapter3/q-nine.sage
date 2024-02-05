def repr(m, n):
    if m == 0 or n == 0:
        print("0")
        return
    q = ceil(n/m)
    print(f"Calculated q: {q}")
    print(f"1/{q}")
    res = m/n - 1/q
    print(f"Passing in {res.numerator()} {res.denominator()}")
    return repr(res.numerator(), res.denominator())

def reprv1(m, n):
    if m == 0 or n == 0:
        print("0")
        return
    q = ceil(n/m)
    print(f"Calculated q: {q}")

    return repr(res.numerator(), res.denominator())
