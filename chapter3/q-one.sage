def n_highest_pow_2(n):
    count = 0
    while n >= 2:
        count += 1
        n = n / 2
    return count

def confirm(n, m):
    if n - pow(2, m) < pow(2, m):
        return True
    return False

def brute(n):
    for i in [1..n]:
        m = n_highest_pow_2(i)
        print(f"Highest power of 2 for {i} is {m}")

        if confirm(i, m):
            print(f"{i}: {True}")
        else:
            print(f"{i}: {False}")
            break
