function [] = inverse_fun()
    syms x
    f(x) = 1/tan(x);
    g = finverse(f)
end
