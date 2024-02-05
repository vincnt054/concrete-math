def a(n):
    return floor(sqrt(2*n)+1/2)

def brute(n):
    for i in [1..n]:
        print(f"i: {i:<4}, a(i): {a(i):<4}")
