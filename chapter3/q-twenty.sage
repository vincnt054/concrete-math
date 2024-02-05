def mumble(x, y):
    return y*ceil(x/y) - x

def multiple_between(alpha, beta, multiple):
    print(f"[multiple = {multiple}]")
    print(f"Old range: {alpha:.2f} - {beta:.2f}")
    alpha = ceil(alpha)
    beta = floor(beta)

    count = 0
    print(f"New range: {alpha:.2f} - {beta:.2f}")
    for i in [alpha..beta]:
        if i % multiple == 0:
            print(f"\tFound i={i}")
            count += 1

    est = (((beta - beta % multiple) - (alpha + mumble(alpha, multiple)))/multiple) + 1
    print(f"Est: {est}")
    print(f"Count: {count}\n")

    return est == count

def multiple_between_v1(alpha, beta, x):
    return 1/2 * x * (floor(beta/x)*(floor(beta/x)+1) - ceil(alpha/x)*(ceil(alpha/x)-1))

def brute(n):
    for i in [1..n]:
        if not multiple_between(1, 1000, i):
            print("Something went wrong!")
            break
