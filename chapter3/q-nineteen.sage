def cond_log(b, x):
    return floor(log(x, b)) == floor(log(floor(x), b))

def find_b(startx, b):
    m_count = 0
    count = 0
    while True:
        res1 = floor(log(startx, b))
        res2 = floor(log(floor(startx), b))
        if res1 == res2:
            print(f"For b: {b} for x: {startx:.2f}")
            count += 1
            m_count += 1
            if count == 50:
                print("-----------------------------")
                startx = 1
                count = 0
                b += 1
        if m_count == 1000:
            break
        startx += 0.1
