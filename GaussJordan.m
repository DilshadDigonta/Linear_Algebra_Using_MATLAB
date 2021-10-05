% gaussjordan method
function x = gaussjordan(A,b)
A = input('Please Enter the Co efficient Mattrix:' );
b = input('Please Enter the constant:');
Aug = [A b];
[m, n]= size(Aug);
for i = 1: m
    Aug(i,:) = Aug(i,:)./Aug(i,i);
    for j = 1 : m
        if j ~=i
            mult1 = Aug(j,i)./Aug(i,i);
            Aug(j,:) = Aug(j,:)-mult1.*Aug(i,:);
        end
    end
end
fprintf('Solve for X in Gauss Jordan: \n');
disp(Aug(:,end))

