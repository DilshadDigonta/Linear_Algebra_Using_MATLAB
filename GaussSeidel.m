%GaussSeidel

A=input('Please Enter the Co efficient Mattrix:' ); 
b=input('Please Enter the constant:'); 
m=size(A,1);
ig = input('Please enter initial guesses');
for i=1:m
    x(i)=ig(i); xold(i)=x(i);
end
sum=0; err=0;
for k=1:1000 % k is the number of iterations
    for i=1:m
        for j=1:m
            if j~=i
                sum=sum+A(i,j)*x(j);
            end
        end
        x(i)=(b(i)-sum)/A(i,i);
        sum=0.0;
        err=err+abs((x(i)-xold(i))/x(i));
        xold(i)=x(i);
    end
    if err<=0.0000001 break ; end
    err=0.0;
end
fprintf('Solve for X in GaussSeidel: \n')
for i=1:m 
    disp (x(i)); 
end
fprintf('Number of iteration:')
disp (k);

