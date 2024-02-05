def ruler(n):
    if n % 2 == 1:
        return 0
    return 1 + ruler(n/2)
