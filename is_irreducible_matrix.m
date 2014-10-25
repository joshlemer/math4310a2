function result = is_irreducible_matrix(A)
    [m,n] = size(A)
    result = false
    if is_positive_matrix((A + eye(n)) ** (n-1))
        result = true 
    endif
    return