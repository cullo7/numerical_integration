 % more stable than euler
 % not more accurate
 % x=x0 + v0*t + .5*a*t^2
 % x0=5, a=-10, v0=0
 % -> t = 1s
 % constant a
 
 function velocity_verlet_int(x0, v0, a, t)
    x = x0;
    v = v0;
    n = 0;
    while x > 0
        x = x + v*t + .5*a*t^2;
        v = v + a*t;
        n = n + 1;
    end
    % time
    disp(n*t);
end