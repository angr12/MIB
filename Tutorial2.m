%%Q1 w/o recursion

k = 0.25;
h = 0.01;
x0 = 5;
t = 0;

store = zeros(1,1001);
store(1) = x0;
tf = length(store);

for i = 2:tf
    x1 = x0 -(h*k*x0);
    store(i) = x1;
    x0 = x1;
end

hold on
figure(1);
t_arr = [0:0.01:10];
plot(t_arr,store);

%%Q1 analytical
x2 = 5*exp(-0.25*t_arr);
plot(t_arr,x2, "r");

%mse:
error = 0; %initialise error var to add to 
for i = 1:tf
    diff = x2(i) - store(i);
    diff = diff.^2;
    error = error + diff;
end

mse = error/tf;
disp(mse); %mse 3.4228e-06


%%Q2

