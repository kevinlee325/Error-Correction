function [q, x] = Mod(x,y)
lx = length(x);
ly = length(y);
temp = zeros(1, ly-1);
lq = lx - ly + 1;
q = zeros(1, lq);
for i = 1:lq
    if x(1) == 0
        x(1) = [];
        lx = lx - 1;
        continue
    end
    coefficient = Div(x(1), y(1));
    q(i) = coefficient;
    temp = Scale(y(2:ly), coefficient);
    x(2:ly) = bitxor(x(2:ly), temp);
    x(1) = [];
    lx = lx - 1;
end
end