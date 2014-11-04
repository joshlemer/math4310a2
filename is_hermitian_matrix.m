function result = is_hermitian_matrix(A )
   [m,n] = size(A)
   if m*m == 0
     result = -2
   endif
   result = isequaln(A, A')
   
   if m != n
     result = -2 + result
   endif
   
   endfunction
   