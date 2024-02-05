# -*- mode: sage-shell:sage -*-
import os

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


def is_elim_upper_half(l):
    llimit = len(l) / 2
    while llimit < len(l):
        if l[llimit] != 0:
            return False
        llimit += 1
    return True

def is_elim_lower_half(l):
    llimit = 0
    ulimit = len(l) / 2
    while llimit < ulimit:
        if l[llimit] != 0:
            return False
        llimit += 1
    return True

def pretty_print_list(l):
    col = 50

    c = 0
    print(f"{bcolors.OKGREEN}", end='')
    while c < len(l):
        if c == len(l) / 2:
            print(f"{bcolors.ENDC}{bcolors.WARNING}", end='')

        if c % col == 0:
            print(f"\n\tRow[{c}]", end=' ')

        print(f"{l[c]}", end=' ')

        c = c+1
    print(f"{bcolors.ENDC}\n")

def LH(n, m):
    l = [1..(2*n)]

    print(f"\t[DEBUG] l = [1..{(2*n)}]")
    c = 0
    kill = 0
    steps = 0

    while not is_elim_upper_half(l):
        steps = steps+1
        kill = kill+1

        if kill % m == 0:
            kill = 0
            l[c] = 0

            if is_elim_lower_half(l):
                print("\t[INFO] Good guys are gone!")
                print(f"\t[INFO] LH({n}, {m}):")
                pretty_print_list(l)
                print(f"\t[INFO] Steps: {steps}")
                return 0

        c = (c+1) % len(l)

        while l[c] == 0:
            c = (c+1) % len(l)

    print("\t[INFO] Bad guys are gone!")
    print(f"\t[INFO] LH({n}, {m}):")
    pretty_print_list(l)
    print(f"\t[INFO] Steps: {steps}")
    return 1

def brute(n):
    soln = []
    m = 2
    while m < 100:
        print(f"\n[DEBUG] Trying L({n}, {m})")
        if LH(n, m):
            print(f"[SUCCESS] We found a 'm': {m}")
            soln.append(m)
        print(f"[FAIL] L({n}, {m})\n")
        m += 1
    return soln

def q21(n):
    t = {}
    for i in [1..n]:
        t[i] = brute(i)

    print("\n" + "-"*15)
    print("{:<8} {:<15}".format('n', 'm'))
    print("-"*15)
    for k, v in t.items():
        print("{:<8} {:<15}".format(k, str(v)))
