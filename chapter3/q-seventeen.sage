def x_km_interval(x, m):
    print(f"[x_km interval]")
    k = m-1
    for k in [1..m-1]:
        j = 1
        print(f"Trying k={k}")

        while 1 <= j and j <= x + k/m:
            print(f"\tIn [1 <= j <= x + {k}/m]: j = {j}")
            j += 1

        print(f"Total j found in [1 <= j <= {x:.2f} + {k}/m]: {j-1}\n")

def x_interval(x):
    j = 1
    print(f"[ceil({x:.2f}) interval]")

    while i <= j and j <= ceil(x):
        print(f"\tIn [1 <= j <= ceil({x:.2f}): j = {j}")
        j += 1

    print(f"Total j found in [1 <= j <= ceil({x:.2f})]: {j-1}")

def mj_mx_interval(x, m):
    j = 1
    print("[mj_mx interval]")

    while 1 <= j <= ceil(x):
        k = 0
        print(f"\tTrying j={j}")
        while 0 <= k < m*(j-x):
            print(f"\t\tIn [1 <= k <= {m}*({j}-{x:.2f}): k = {k}")
            k = k + 1
        print(f"\tTotal k found in [1 <= k <= {m}*({j}-{x:.2f})]: {k-1}\n")
        j = j + 1

def confirm(x, m):
    x_km_interval(x, m)
    mj_mx_interval(x, m)
    x_interval(x)
