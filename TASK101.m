% Input for matrix A
A = input('Enter matrix A:');

% Input for matrix B
B = input('Enter matrix B:');

% Check if matrices A and B can be multiplied
if size(A, 2) == size(B, 1)
    % Matrix A and B can be multiplied
    C = A * B;
    fprintf('Matrix A * B:\n');
    disp(C);
else
    fprintf('Matrix multiplication is not possible.\n');
end

% Find and print the maximum value in matrix A
max_value_A = max(A(:));
fprintf('Maximum value in matrix A: %f\n', max_value_A);

