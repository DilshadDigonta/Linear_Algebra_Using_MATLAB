%jacobi
function x= Jacobi(A,b)
A = input('Please Enter the Co efficient Mattrix:' );
b = input('Please Enter the constant:');
allerr = 1e-5;
x = input('Please enter initial guesses');
n = size(A,1);
err = Inf;
count = 0;
while all(err>allerr)
    xold = x; 
    for i = 1 : n
        p = 0;
        for j = 1:n
            if j~= i
                p = p + A(i,j).* xold(j);
                
            end
        end
        x(i) = (1/A(i,i))*(b(i)-p);
    end
    count = count + 1;
    y(count,:) = x;
    err = abs(xold - x);
end

fprintf('Solve for X in Jacobi Iteration: \n');
disp(x)

fprintf('Number of iteration: %d\n',count);
