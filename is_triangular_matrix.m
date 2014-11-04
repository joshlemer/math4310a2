function result = is_triangular_matrix(A)
    [m,n] = size(A)
    if m*n == 0
        result = -2
        return
    endif

    result = is_upper_triangular_matrix(A) || is_lower_triangular_matrix(A)

    if m != n
        result = result - 2
    endif

endfunction
