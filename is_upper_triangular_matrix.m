function result = is_upper_triangular_matrix(A )
   [height,width] = size(A)
   if height * width == 0
       result = -2
    endif
   result = 1
   for i = 1:height
       for j = 1:(i-1)
           if (A(i,j) != 0)
               result = 0
               return
           endif    
       end
   end

   if height != width
       result = result - 2
    endif

   endfunction
   
