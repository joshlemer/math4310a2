function result = is_nonnegative_matrix(A)
    [m,n] = size(A)
    if m*n == 0
        result = -2
        return
    endif
        
    if m == n && has_imaginary_elements(A)
        result = -3
        return
    endif
    
    result = isequal(A >= 0, ones(n)) && !has_imaginary_elements(A)
    
    if m != n
        result = -2 + result
    endif
    
    return