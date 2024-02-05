# -*- mode: sage-shell:sage -*-

om0, om1 = var('om0, om1')
b0, b1 = var('b0, b1')

def beta(n, k):
    if floor(n / pow(2, k)) % 2:
        return b1
    else:
        return b0

def p(n, k):
    return pow(4, k) * beta(n, k)

def q(n):
    if n < 1:
       return "Cannot compute for n less than 1"
    elif n == 1:
        return 1
    else:
        ulimit = floor(log(n, 2)) - 1
        return sum(p(n, k) for k in (0..ulimit))

def omega(n, k):
    if floor(n / pow(2, k)) % 2:
        return om1
    else:
        return om0

def r(n, k):
    return pow(4, k) * floor(n / pow(2, k+1)) * omega(n, k)

def s(n):
    if n < 1:
       return "Cannot compute for n less than 1"
    elif n == 1:
         return 1
    else:
          ulimit = floor(log(n, 2)) - 1
          return sum(f(n, k) for k in (0..ulimit))
