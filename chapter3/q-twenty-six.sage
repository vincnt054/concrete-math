def comp(N, n, k):
    print(f"n+2k+1 = {n+2*k+1}")
    print(f"n+2k+2 = {n+2*k+2}")
    print(f"k = {floor((N-n-1)/2)}")
    res = floor((N-n-1)/2)
    print(f"N, 2k+1 = {n + 2*res + 1}")
    print(f"N, 2k+2 = {n + 2*res + 2}")
