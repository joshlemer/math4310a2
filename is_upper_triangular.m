function result = is_upper_triangular(A )
   [height,width] = size(A)
   result = 1
   for i = 1:height
       for j = 1:(i-1)
           if (A(i,j) != 0)
               result = 0
               return
           endif    
       end
   end
   endfunction
   