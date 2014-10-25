function result = is_nonnegative_matrix(A)
    [m,n] = size(A)
    result = isequal(A >= 0, ones(n))
    return