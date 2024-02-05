# -*- mode: sage-shell:sage -*-

def count_non_zero(l):
    count = 0
    for i in range(len(l)):
        if l[i] != 0:
            count += 1
    return count

def I(n):
    l = [1..n]

    c = 0
    kill = 0
    while count_non_zero(l) != 2:
        if kill:
            kill = 0
            l[c] = 0
        else:
            kill = 1
        c = (c+1) % len(l)

        while l[c] == 0:
            c = (c+1) % len(l)

    c = (c+1) % len(l)
    while l[c] == 0:
        c = (c+1) % len(l)

    print("I(n): " + str(l[c]))
