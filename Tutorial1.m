%% Question 1: dx/dt = -kx
hold on;
t_span = [0 10];
x0 = 4;
k = 3/5;
[t, x] = ode45(@(t,x) -k*x, t_span, x0);
plot(t,x, 'r');
xlabel("t");
ylabel("x");

%% Question 2
x1 = 4*exp(-3/5*t);
plot(t, x1, 'b');
hold off

%MSE:
n = length(x);

error = 0; %initialise error var to add to 
for i = 1:n
    diff = x1(i) - x(i);
    diff = diff.^2;
    error = error + diff;
end

mse = error/n;
disp(mse);

%% Question 3
figure(2)
a = zeros(1, n-1);
for i = 1:n-1
    a(i) = t(i+1)-t(i);
end
t
plot(a);

%% Vectorised Question 3
figure(3)
y = t(2:n-1) - t(1:n-2);
plot(y)