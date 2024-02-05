def S(n):
    sum = 0
    tmp_sum = 0

    k = 1
    while k >= 1:
        tmp_sum += floor(n/pow(2,k) + 1/2)

        if abs(sum - tmp_sum) == 0:
            return sum
        sum = tmp_sum
        k += 1

def Sv1(n):
    sum = 0
    for j in [1..(n+1)/2]:
        sum += floor(log(2*n/(2*j-1),2))
    return sum

def Sv2(n):
    sum = 0
    for j in [1..(n+1)/2]:
        k = 1
        while k <= log(2*n/(2*j-1),2):
            sum += 1
            k+= 1
    return sum

def X(n):
    sum = 0
    for j in [1..(n+1)/2]:
        sum += floor(log(n/(2*j-1), 2))
    return sum

def Xv1(n):
    sum = 0
    for j in [1..n]:
        sum += floor(log(n/j, 2))
    return sum

def Xv2(n):
    sum = 0
    for j in [1..n]:
        sum += floor(log(n/(2*j-1), 2))
        print(f"Sum={sum}")
    return sum

def Xv3(n):
    sum = 0
    for j in [2..(n+1)]:
        sum += floor(log(n/(j-1), 2))
        print(f"Sum={sum}")
    return sum

def Sv3(n):
    sum = 0
    j = 1
    while j >= 1:
        m = 0
        while m >= 0:
            llimit = n/pow(2,m+1)
            ulimit = n/pow(2,m)
            print(f"In interval {float(llimit):.2f} < j <= {float(ulimit):.2f}")
            print(f"Testing j={j}")

            if llimit < j <= ulimit:
                print(f"\tYes, {j} passed in here, m = {m}\n")
                sum += m
            elif j > ulimit:
                print(f"\tExceeded in here j={j}!\n")
                break
            else:
                print(f"\tNo, {j} failed in here\n")
            m += 1
        if j > n:
            print(f"Exceeded at j={j}!")
            break

        j += 1
    print(f"Found sum={sum}")

