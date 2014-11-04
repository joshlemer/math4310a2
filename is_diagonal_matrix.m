function result = is_diagonal_matrix(A )
  [m,n] = size(A)
      if m * n == 0
        result = -2
        return
      endif
     
   result = abs(is_upper_triangular_matrix(A)) == 1 && abs(is_lower_triangular_matrix(A)) == 1
   
   if m != n
     result = -2 + result
   endif
   endfunction
   
