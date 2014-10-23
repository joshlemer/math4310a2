function result = diagonalize(A)
        [m, n] = size(A)
        eigenvalues = eig(A)
        diagonalizable = true
        similarity_matrix = []
        already_used_eigenvalues = []
        for ind = 1:size(eigenvalues, 1)
            #if dim(e-space_eigenvalues(ind)) < count(eigenvalues,eigenvalues(ind))
            if (n - rank(A - eigenvalues(ind) * eye(n)) < sum(eigenvalues == eigenvalues(ind)))
                disp("This matrix is NOT diagonalizable")
                diagonalizable = false
                result = false
                return
            elseif sum(already_used_eigenvalues == eigenvalues(ind)) == 0
                disp(similarity_matrix)
                already_used_eigenvalues = [already_used_eigenvalues eigenvalues(ind)]
                similarity_matrix = [similarity_matrix, null(A - eigenvalues(ind) * eye(n))]              
                disp("good")
                
            endif
            
            end
        result = similarity_matrix
        return