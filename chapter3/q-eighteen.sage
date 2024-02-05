def enumerate_j_k(n, alpha, v):
    print("Summing j then k")
    k = 0
    while k < n:
        j= floor(k * alpha - v)


        while (k*alpha - v) < j <= k * alpha:
            print(f"\t(k, j): ({k}, {j})")
            j += 1
        k += 1

    print("END")

def enumerate_k_j(n, alpha, v):
    print("Summing k then j")
    j = 0
    while j < ceil(n*alpha):
        k = floor(j / alpha)
        while j/alpha < k < (j+v)*(1/alpha) and k < n:
            print(f"\t(j, k): ({j}, {k})")
            k += 1
        j += 1
    print("END")

def confirm(n, alpha, v):
    enumerate_j_k(n, alpha, v)
    enumerate_k_j(n, alpha, v)
