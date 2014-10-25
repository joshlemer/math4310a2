function result = is_diagonal_matrix(A )
   result = is_upper_triangular(A) && is_lower_triangular(A)
   endfunction
   