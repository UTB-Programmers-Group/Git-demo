function LeastSquares(x,y)

if (length(x) == length(y))
    n = length(x);
else
    n = length(x);
    fprintf('x and y are not of equal length.');
end

sumxy = 0;
sumx = 0;
sumy = 0;
sumx2 = 0;

for i=1:n
    sumxy = sumxy + x(i)*y(i);
    sumx = sumx + x(i);
    sumy = sumy + y(i);
    sumx2 = sumx2 + x(i)^2;
end

sum = (n*sumxy - sumx*sumy) / (n*sumx2 - sumx^2);

fprintf('%10.6f\n', sum);

sum = (sumx2*sumy - sumx*sumxy) / (n*sumx2 - sumx^2);

fprintf('%10.6f\n', sum);