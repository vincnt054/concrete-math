import time

def rec_K(n):
    if n == 0:
        return 1

    return 1 + min(2 * rec_K(floor((n-1)/2)), 3 * rec_K(floor((n-1)/3)))

def mem_K(n, arr):
    if arr[n] != -1:
        return arr[n]
    arr[n]= 1 + min(2 * mem_K(floor((n-1)/2), arr), 3 * mem_K(floor((n-1)/3), arr))
    return arr[n]

def brute(n):
    start = time.time()
    print(rec_K(n))
    end = time.time()
    print(f"rec_K took {format(float(end-start), '.100f'}")

    arr = [-1] * (n+1)
    arr[0] = 1
    start = time.time()
    print(K(n, arr))
    end = time.time()
    print(f"mem_K took {format(float(end-start), '.100f')}")

    arr = [-1] * (n+1)
    arr[0] = 1
    start = time.time()
    print(tab_K(n, arr))
    end = time.time()
    print(f"tab_K took {format(float(end-start), '.100f')}")

    # for i in [0..n]:
    #     arr = [-1] * (i+1)
    #     arr[0] = 1
    #     print(f"\nK({i})")
    #     res = K(i, arr, 0)
    #     print(f"result = {res}")
