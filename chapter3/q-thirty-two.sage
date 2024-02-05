def closest_int(x):
    return min(x - floor(x), ceil(x)-x)

def dist_pow_2(x):
    res = 1
    k = 0
    sum = 0
    while res != 0:
        res = closest_int(x/pow(2, k))
        print(f"res={res}")
        sum += pow(2, k) * res
        print(f"Sum = {sum}")
        k += 1

    print(f"Sum = {sum}")

def dist_floor(x, ulimit):
    print("Positive k")
    for k in [0..ulimit]:
        print(f"{x - pow(2, k) * floor(x/pow(2, k)):.2f}", end=' ')

    print("\nNegative k")
    for k in [-ulimit..0]:
        print(f"{x - pow(2, k) * floor(x/pow(2, k)):.2f}", end=' ')
    print()

def dist_ceil(x, ulimit):
    print("Positive k")
    for k in [0..ulimit]:
        print(f"{pow(2, k) * ceil(x/pow(2, k)) - x:.2f}", end=' ')

    print("\nNegative k")
    for k in [-ulimit..-1]:
        print(f"{pow(2, k) * ceil(x/pow(2, k)) - x: .2f}", end=' ')
    print()

def confirm_x_x_plus_one(x, llimit):
    sum1 = 0
    sum2 = 0
    for k in [llimit..-1]:
        sum1 += pow(2, k) * (min(x/pow(2,k) - floor(x/pow(2,k)), ceil(x/pow(2,k)) - x/pow(2,k)))**2
        sum2 += pow(2, k) * (min((x+1)/pow(2,k) - floor((x+1)/pow(2,k)), ceil((x+1)/pow(2,k)) - (x+1)/pow(2,k)))**2
    print(f"sum1 = {sum1}")
    print(f"sum2 = {sum2}")
