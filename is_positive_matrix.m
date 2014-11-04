function result = is_positive_matrix(A)
    [m,n] = size(A)
    
    result = is_nonnegative_matrix(A)
    
    if result == 0 || result == -2 || result == -3
        return
    endif
    
    #So A is nonnegative but possibly not square    
    result = isequal(A > 0, ones(n)) * result
    return