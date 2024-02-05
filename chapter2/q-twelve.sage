def p(k, c):
    return k + pow(-1, k) * c

def is_unique(t):
    u = dict()
    for _, v in t.items():
        if not(v in u):
            u[v] = 1
        else:
            return 0
    return 1

def check_p(n, c):
    print(f"\t[DEBUG] Trying p({str(n)}, {str(c)})")
    t = dict()
    for i in [1..n]:
        t[i] = p(i, c)

    print("\t{:<8}".format("n"), end='')
    for i in [1..n]:
        print("\t {:>5}".format(str(i)), end='')

    print("\n\t{:<8}".format(f"p({str(n)}, {str(c)})"), end='')
    for _, v in t.items():
        print("\t {:>5}".format(str(v)), end='')

    if is_unique(t):
        print("\n\t[DEBUG] It is unique!\n")
        return 1
    else:
        print("\n\t[DEBUG] It was not unique!\n")
        return 0

def brute(n, c):
    print(f"[DEBUG] Trying n={n}, c={c}")

    for i in [1..n]:
        if not check_p(i, c):
            print(f"[DEBUG] Stopping at n={str(i)}")
            break
