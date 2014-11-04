function result = matrix_properties(A)
    result = struct('is_real_matrix', is_real_matrix(A),
                    'has_imaginary_entries', has_imaginary_entries(A),
                    'is_diagonal_matrix', is_diagonal_matrix(A),
                    'is_lower_triangular_matrix', is_lower_triangular_matrix(A),
                    'is_upper_triangular_matrix', is_upper_triangular_matrix(A),
                    'is_triangular_matrix', is_triangular_matrix(A),
                    'is_hermitian_matrix', is_hermitian_matrix(A),
                    'is_nonnegative_matrix', is_nonnegative_matrix(A),
                    'is_positive_matrix', is_positive_matrix(A),
                    'is_irreducible_matrix', is_irreducible_matrix(A),
                    'is_primitive_matrix', is_primitive_matrix(A),
                    'primitivity_index', primitivity_index(A))
endfunction
