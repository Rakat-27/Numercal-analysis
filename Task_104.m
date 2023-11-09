% Define the function and its derivative
f = @(x) x.^3 - 2*x.^2 - 4;
df = @(x) 3*x.^2 - 4*x;

% Define the initial guess
x0 = 2;

% Set the tolerance for convergence
tolerance = 1e-6;

% Initialize matrices to store root, iteration information, and tangent lines
roots = [];
iterations = [];
tangent_lines = [];

% Newton-Raphson method
x = x0;
while abs(f(x)) > tolerance
    roots = [roots; x];  % Store the root
    iterations = [iterations; abs(f(x))];  % Store the function value at the root
    tangent_lines = [tangent_lines; df(x) * (linspace(x - 1, x + 1, 100) - x) + f(x)];  % Store tangent line

    x = x - f(x) / df(x);  % Newton-Raphson formula
end

% Display the final root
fprintf('Approximate root: %f\n', x);

% Plot the function and tangent lines
x_vals = linspace(-1, 3, 1000);
y_vals = f(x_vals);

figure;
plot(x_vals, y_vals, 'b-', roots, zeros(size(roots)), 'ro');
hold on;
plot(linspace(x - 1, x + 1, 100), tangent_lines', 'k--');
xlabel('x');
ylabel('f(x)');
title('Newton-Raphson Method Root-Finding');
legend('f(x)', 'Roots', 'Tangent Lines');
grid on;

