function [list] = search(Loc)
index = 1;
load('Koromaru');
for i = 1:15
    if polyEval(Loc, i) == 0
        list(index) = mod(1-Log(i), 15)+1;
        index = index + 1;
    end
end
end

