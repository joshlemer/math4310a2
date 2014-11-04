function result = is_irreducible_matrix(A)
    [m,n] = size(A)
    if m*n == 0 || m != n
        result = -2
        return
    endif
    
    result = false
    if is_positive_matrix((abs(A) + eye(n)) ** (n-1))
        result = true 
    endif
    return