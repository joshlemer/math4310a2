function result = has_imaginary_entries(A )
   [m,n] = size(A)
   if m * n == 0
      result = -2
      return
   endif
   result = !is_real_matrix(A)
   endfunction
   