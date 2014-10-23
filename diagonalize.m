function [diagonalizable, similarity_matrix, diagonal_matrix] = diagonalize(A)
        [m, n] = size(A)
        eigenvalues = eig(A)
        diagonalizable = true
        similarity_matrix = []
        already_used_eigenvalues = []
        for ind = 1:size(eigenvalues, 1)
            #if the dimension of the eigenspace < the eigenvalue's multiplicity
            if (n - rank(A - eigenvalues(ind) * eye(n)) < sum(eigenvalues == eigenvalues(ind)))
                disp("This matrix is NOT diagonalizable")
                diagonalizable = false
                similarity_matrix = false
                diagonal_matrix = false
                return

            #else if we haven't already looked at this eigenvalue
            elseif sum(already_used_eigenvalues == eigenvalues(ind)) == 0
                already_used_eigenvalues = [already_used_eigenvalues eigenvalues(ind)]
                similarity_matrix = [similarity_matrix, null(A - eigenvalues(ind) * eye(n))]
            endif
            end

        disp("This matrix is diagonalizable")
        diagonal_matrix = inv(similarity_matrix) * A * similarity_matrix
        return
