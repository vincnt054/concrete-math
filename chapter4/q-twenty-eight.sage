def stern(seq):
    S = identity_matrix(2)
    L = matrix(ZZ, [[1, 1], [0, 1]])
    R = matrix(ZZ, [[1, 0], [1, 1]])
    stack = []
    multiple = ""

    for c in seq:
        if c == "R" or c == "L":
            if multiple != "":
                k = int(multiple)
                lr = stack.pop()
                while k > 0:
                    if lr == "R":
                        S *= R
                    elif lr == "L":
                        S *= L
                    k -= 1
                multiple = ""
            stack.append(c)
        elif c.isdigit():
            multiple += c

    k = int(multiple)
    lr = stack.pop()
    while k > 0:
        if lr == "R":
            S *= R
        elif lr == "L":
            S *= L
        k -= 1

    print(f"{S[1][0] + S[1][1]}/{S[0][0] + S[0][1]}")
