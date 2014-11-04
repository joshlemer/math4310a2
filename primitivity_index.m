function result = primitivity_index(A)
    [m,n] = size(A)
    result = is_primitive_matrix(A)

    if !(result == 1)
        return
    endif

    k = 1
    while true
        if is_positive_matrix(A ** k)
            result = k
            return
        endif
    endwhile

endfunction

