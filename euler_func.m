function [t,x] = euler_func(k,h,x0,t0, tf)
    t = t0:h:tf;
    store = zeros(1,length(t));
    store(1) = x0;
    n = length(store);
    
    
    for i = 2:n
        x1 = x0 -(h*k*x0);
        store(i) = x1;
        x0 = x1;
    end
    x = store;
end

