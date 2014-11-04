function result = is_real_matrix(A )
   [height,width] = size(A)
   if height * width == 0
       result = -2
       return
   endif
   
   result = 1
   for i = 1:height
       for j = 1:width
           if (result && !isreal(A(i,j)))
               result = 0
           endif    
       end
   end
   
   endfunction
   