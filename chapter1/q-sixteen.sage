# -*- mode: sage-shell:sage -*-

def f(n, k):
    return pow(3, k) * floor(n / pow(2, k+1))

def g(n):
    if n < 1:
       return "Cannot compute for n less than 1"
    elif n == 1:
         return 1
    else:
          ulimit = floor(log(n, 2)) - 1
          return sum(f(n, k) for k in (0..ulimit))
