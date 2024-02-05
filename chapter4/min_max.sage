def brute(n):
    for c in [0..n]:
        for b in [0..c]:
            for a in [0..b]:
                print(f"min({a}, {b}, {c}) = {a} + {b} + {c} - max({a}, {b}) - max({b}, {c}) - max({a}, {c}) + max({a}, {b}, {c})")

                if T(a,b,c):
                    print(f"{True}")
                else:
                    print(f"Something isn't right at a={a} b={b} c={c}")

def T(a,b,c):
   return min(a, b, c) == a + b + c - max(a, b) - max(b, c) - max(a, c) + max(a, b, c)
