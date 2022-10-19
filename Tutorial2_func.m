%%Q1

figure(1)
hold on
% plot the solution using eulers
[t,x] = euler_func(0.25,0.01,5,0, 10);
plot(t,x)

%find mse
x2  = 5*exp(-0.25*t);

mse1 = mse_func(x,x2);
disp(mse1); % returns 3.4228e-0.6


%%Q2

[t2,x3] = euler_func(0.25, 0.001, 5, 0, 10);
plot(t,x, 'r')
x4  = 5*exp(-0.25*t2);

mse2 = mse_func(x3,x4);
disp(mse2); %returns  3.4197e-08

% as step size increasaes the mse decreases, a decreases step size reduces
% the error the occurs due to estimation
