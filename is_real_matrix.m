function result = is_real_matrix(A )
   [height,width] = size(A)
   result = 1
   for i = 1:height
       for j = 1:width
           if (!isreal(A(i,j)))
               result = 0
               return
           endif    
       end
   end
   endfunction
   