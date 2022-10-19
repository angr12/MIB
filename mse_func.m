function output = mse_func(x1,x2) %x1: estimate, x2: ideal
error = 0; %initialise error var to add to 
tf = length(x1);
for i = 1:tf
    diff = x2(i) - x1(i);
    diff = diff.^2;
    error = error + diff;
end
output = error/tf; %return mse
end