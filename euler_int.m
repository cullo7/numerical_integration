% slope must be parameterized function, e.g. f=@(x) 2*x + 1
% example function call "euler_int(1,4,1, f)"
function euler_int(y0, n, h, slope)
    y=y0;
    for i=1:n
        y = y + h * slope(y);
    end
    disp(y);
end