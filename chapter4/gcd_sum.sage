def sum_gcd(k, m):
    print("\tIn sum_gcd: ")
    d = gcd(k, m)
    print(f"\t\tComputing: d={d}")
    count = 0
    for k in range(m):
        if gcd(k/d, m/d) == 1:
            print(f"\t\t\tIter:{k}, In true predicate: k/d={k/d} m/d={m/d}")
            count += 1
        else:
            print(f"\t\t\tIter:{k}, In false predicate: k/d={k/d} m/d={m/d}")
    return count

def sum_gcdv2(k, m):
    print("\n\tIn sum_gcdv2: ")
    d = gcd(k, m)
    print(f"\t\tComputing: d={d}")
    count = 0
    for k in range(m/d):
        if gcd(k, m/d) == 1:
            print(f"\t\t\tIn true predicate: k={k} m/d={m/d}")
            count += 1
        else:
            print(f"\t\t\tIn false predicate: k={k/d} m/d={m/d}")
    return count

def confirm(k, m):
    res1 = sum_gcd(k,m)
    res2 = sum_gcdv2(k,m)

    if res1 != res2:
        print("\tThis doesn't look equal!")
        return 1
    else:
        print(f"\n\tsum_gcd: {res1}")
        print(f"\tsum_gcdv2: {res2}")
        print("\tThis looks equal!")
        return 0

def brute(k,n):
    for i in range(n):
        print(f"Trying m={i}")
        if confirm(k, i):
            break
