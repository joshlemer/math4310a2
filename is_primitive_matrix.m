function result = is_primitive_matrix(A)
    [m,n] = size(A)
    if m*n == 0 || m != n
        result = -2
        return
    endif
   if has_imaginary_elements(A)
       result = -3
       return
    endif
    
   #Ensure the matrix is irreducible
    if !is_irreducible_matrix(A)
        result = false
        return
    endif
    
    [m_0,n_0] = size(A)
    distinct_eigenvalues = unique(eig(A))
    distinct_nonzero_eigenvalues = distinct_eigenvalues(distinct_eigenvalues !=0)
    
    #The modulus of the max-modulus, nonzero eigenvalue
    max_modulus = max(abs(distinct_nonzero_eigenvalues))
    
    #Vector of eigenvalues that have the max modulus
    eigenvalues_of_max_modulus = distinct_nonzero_eigenvalues(abs(distinct_nonzero_eigenvalues) >= max_modulus)
    
    [m_1,n_1] = size(eigenvalues_of_max_modulus)
    
    #If the max mod is attained by more than one eigenvalue
    if m_1 > 1
        result = false
        return
    endif
    
    result = true
    return
    
endfunction
